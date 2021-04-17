return {
    controls = {
        left = {'key:left', 'axis:leftx-', 'button:dpleft'},
        right = {'key:right', 'axis:leftx+', 'button:dpright'},
        up = {'key:up', 'axis:lefty-', 'button:dpup'},
        down = {'key:down', 'axis:lefty+', 'button:dpdown'},

        jump = {"key:y", "key:z", "key:w", 'button:a'},
        use = {"key:x", "button:x", "button:b"},

        camleft = {'key:a', 'axis:rightx-'},
        camright = {'key:d', 'axis:rightx+'},
        camup = {'key:w', 'axis:righty-'},
        camdown = {'key:down', 'axis:righty+'},

        zoomin = {'axis:righty-'},
        zoomout = {'axis:righty+'},

        nodeselection = {"key:space", 'button:a'},
        backbutton = {"key:x", 'button:b', 'button:x'},

        debug1 = {'key:k'},
    },
    pairs = {
        movement = {'left', 'right', 'up', 'down'},
        camera = {'camleft', 'camright', 'camup', 'camdown'},
    },
    joystick = love.joystick.getJoysticks()[1]
}