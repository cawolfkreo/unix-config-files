load_git_branch() {
        local STAGED UNSTAGED BRANCH MISC
        #colors
        STAGED="#26ff2a"
        UNSTAGED="#ff3045"
        BRANCH="#75e682"
        MISC="#f55f36"

        autoload -Uz vcs_info
        precmd() {vcs_info}
        # Examples for vcs_info taken from:
        #       https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples

        zstyle ':vcs_info:*' check-for-changes true
        zstyle ':vcs_info:*' stagedstr ' +'
        zstyle ':vcs_info:*' unstagedstr ' *'
        zstyle ":vcs_info:git*" formats "%F{$MISC}%m%F{$BRANCH}on %b%F{$STAGED}%c%F{$UNSTAGED}%u"

        # This one uses %c
        zstyle ':vcs_info:git*+set-message:*' hooks git-untracked git-st
        +vi-git-untracked() {
                if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
                        git status --porcelain | grep '??' &> /dev/null ; then
                        # This will show the marker if there are any untracked files in repo.
                        # If instead you want to show the marker only if there are untracked
                        # files in $PWD, use:
                        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
                        local UNTRACKED
                        UNTRACKED="#ff3045"
                        hook_com[staged]+=" %F{$UNTRACKED}!"
                fi
        }

        # This one uses %m
        +vi-git-st() {
                local ahead behind
                local -a gitstatus

                ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
                (( $ahead )) && gitstatus+=( "↑+${ahead}" )

                behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)
                (( $behind )) && gitstatus+=( "-${behind}↓" )

                hook_com[misc]+=${(j:/:)gitstatus}${gitstatus:+" "}
        }
}

git_branch() {
        local PARENTHESIS BRANCH PREFIX SUFIX
        PARENTHESIS="#3cdfe8"
        PREFIX="%F{$PARENTHESIS}("
        SUFIX="%F{$PARENTHESIS})"
        [ ! -z "$vcs_info_msg_0_" ] && echo "$PREFIX$vcs_info_msg_0_$SUFIX"
}

git_status() {
        local INDEX STATUS

        INDEX=$(command git status --porcelain -b 2> /dev/null)

        STATUS=""
}

set_tip() {
        local TIP TIP_ERR CORRECT ERRO
        # Colors
        TIP="#3cdfe8"
        TIP_ERR="#ff0000"

        # Tips
        CORRECT="%B%F{$TIP}>%f%b"
        ERRO="%B%F{$TIP_ERR}✗%f%b"

        echo "%(?.$CORRECT.$ERRO)"
}

marsh_setup() {
        # Colors
        NAME="#e63232"
        SEPAR="#f78640"
        SEPAR="#ffd412"
        DIRECT="#ff9e9e"

        load_git_branch
        RPROMPT='$(git_branch)'
        PROMPT="%F{$NAME}%n%F{$SEPAR}•%F{$DIRECT}%1~ $(set_tip) "
}



marsh_setup
unset marsh_setup
