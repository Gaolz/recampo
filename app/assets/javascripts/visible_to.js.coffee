@campo.VisibleTo = 
    # data-visible-to="options"
    #
    # options:
    #   - user: visible to logined user
    check: ->
        if !window.campo.currentUser?
            $('[data-visible-to~=usre]').remove()

$ ->
    campo.VisibleTo.check()