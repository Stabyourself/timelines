return {
    controls = {
        left = {'key:a', 'axis:leftx-', 'button:dpleft'},
        right = {'key:d', 'axis:leftx+', 'button:dpright'},
        up = {'key:w', 'axis:lefty-', 'button:dpup'},
        down = {'key:s', 'axis:lefty+', 'button:dpdown'},

        jump = {'key:k', "key:space", 'button:a'},
        shoot = {'key:j', 'button:x'},

        camleft = {'key:left', 'axis:rightx-'},
        camright = {'key:right', 'axis:rightx+'},
        camup = {'key:up', 'axis:righty-'},
        camdown = {'key:down', 'axis:righty+'},

        camzoomin = {'key:pageup'},
        camzoomout = {'key:pagedown'},

        opentimeline = {'key:return'},
    },
    pairs = {
        camera = {'camleft', 'camright', 'camup', 'camdown'}
    },
    joystick = love.joystick.getJoysticks()[1]
}