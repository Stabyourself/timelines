return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 116,
  height = 116,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 32,
  backgroundcolor = { 85, 170, 255 },
  properties = {},
  tilesets = {
    {
      name = "markers",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 4,
      image = "../img/markers.png",
      imagewidth = 72,
      imageheight = 18,
      transparentcolor = "#000000",
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
          type = "start",
          properties = {
            ["type"] = "start"
          }
        },
        {
          id = 1,
          type = "key",
          properties = {
            ["transcendent"] = false
          }
        },
        {
          id = 2,
          type = "door",
          properties = {
            ["transcendent"] = false
          }
        },
        {
          id = 3,
          type = "altar"
        }
      }
    },
    {
      name = "tiles",
      firstgid = 5,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 7,
      image = "../img/tiles.png",
      imagewidth = 128,
      imageheight = 128,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 49,
      tiles = {
        {
          id = 0,
          properties = {
            ["collidable"] = true
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16.0514,
                height = 3.41897,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 2,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 3,
          properties = {
            ["collidable"] = true,
            ["spikes"] = true
          }
        },
        {
          id = 7,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 8,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 9,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 14,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 15,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 16,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 21,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 22,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 23,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 28,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 29,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 30,
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 116,
      height = 116,
      id = 3,
      name = "world",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt2k1vnTAQheG76ceizabpJu2myf//j/WotWQ5DByMPXdy9SIhwAyDeQ4kStXn2+32fGH9Wa7NsPwok/CeI8scI5w8A3U8ixV5/ntb1Ny8OvKM+Or0e3g5qePkqVtHVKq5eXXkGZGSfg8vJ3WcPHXriEo1N6+OPCNS0u/h5aSOk6duHVGp5ubVkWdESvo9vJzUcfLUrSMq1dy8OvKMSEm/h5eTOk6eunVEpZqbV0eeESnp9/ByUsfJU7eOqFRz8+rIMyIl/R5eTuo4eerWEZVqbl5dljxfCtbsOX4qPWeu5HlOoM/0V7nc1t/n2uxWX813t/mEk947rY5n+T4rRc10Zoa1d789yravjzhWc/PqsuVpZvZNRi1eplH37+/j5aSOX8nzW5nM97I+9ZP6YMdtpveeupqbV3clz/p/fq70uLdfvb9lmmHxclLH+yw+l4eytS72DXrf36w863du3/re+qWcP7PWZ/hIWzU3r67P0579a1mrsV23VWN1NU+r8X7u1j41p/7dsPPe3Prx9ueisr+Vvc0789I/88jxn/KAr//Xt7I1+75PzaPd9jV23J7f6tPXbPXwxpQMj2os43bZyrwd623aa1fse8/+iOPmd5TX3vne33Lbqu/rIo8fMTfvmcy19x+19rK0/vdcvGd/xHFzbvMcdd/Lkjzf/65d9S5dybP9ndi+E1v7o+/JjOtW2WXse5Rn/Vurbs9k2OY6I5fRHhndV83pKE/PsM1K2ff6RIyvssvYdzTPmoOSpdXcc8novmpO5txmMuLeXu/tj/Sddc0qu4x9zazNwP4d6+zaXu/tz8pmpE9G91VzMh8vg5njIznMumaVXca+M/Oc5T+7T0b3VXOabZex3yq7jH0z+jMnBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAgq8BfAbh1yQ=="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "markers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1040,
          y = 512,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["transcendent"] = true
          }
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 848,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1312,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["transcendent"] = true
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1424,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
