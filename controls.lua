return {
    controls = {
        left = {'sc:left', 'axis:leftx-', 'button:dpleft'},
        right = {'sc:right', 'axis:leftx+', 'button:dpright'},
        up = {'sc:up', 'axis:lefty-', 'button:dpup'},
        down = {'sc:down', 'axis:lefty+', 'button:dpdown'},

        jump = {"sc:z", 'button:a'},
        use = {"sc:x", "button:x", "button:b"},

        camleft = {'sc:a', 'axis:rightx-'},
        camright = {'sc:d', 'axis:rightx+'},
        camup = {'sc:w', 'axis:righty-'},
        camdown = {'sc:s', 'axis:righty+'},

        zoomin = {'axis:righty-'},
        zoomout = {'axis:righty+'},

        nodeselection = {"sc:z", 'button:a'},
        backbutton = {"sc:x", 'button:b', 'button:x'},

        debug1 = {'sc:k'},
    },
    pairs = {
        movement = {'left', 'right', 'up', 'down'},
        camera = {'camleft', 'camright', 'camup', 'camdown'},
    },
    joystick = love.joystick.getJoysticks()[1]
}