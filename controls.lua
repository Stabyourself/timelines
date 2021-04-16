return {
    controls = {
        left = {'key:a', 'axis:leftx-', 'button:dpleft'},
        right = {'key:d', 'axis:leftx+', 'button:dpright'},
        up = {'key:w', 'axis:lefty-', 'button:dpup'},
        down = {'key:s', 'axis:lefty+', 'button:dpdown'},

        jump = {"key:space", 'button:a'},
        use = {"key:e", "button:x", "button:b"},

        camleft = {'key:left', 'axis:rightx-'},
        camright = {'key:right', 'axis:rightx+'},
        camup = {'key:up', 'axis:righty-'},
        camdown = {'key:down', 'axis:righty+'},

        zoomin = {'axis:righty-'},
        zoomout = {'axis:righty+'},

        nodeselection = {'button:a'},
        backbutton = {'button:b', 'button:x'},

        debug1 = {'key:k'},
    },
    pairs = {
        movement = {'left', 'right', 'up', 'down'},
        camera = {'camleft', 'camright', 'camup', 'camdown'},
    },
    joystick = love.joystick.getJoysticks()[1]
}