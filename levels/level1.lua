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
  nextobjectid = 27,
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
      columns = 3,
      image = "../img/markers.png",
      imagewidth = 54,
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
      tilecount = 3,
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
        }
      }
    },
    {
      name = "tiles",
      firstgid = 4,
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
      data = "eAHt2stu2zAUhGEv2nTRZtNk0/b937MkCgIEoZFGJHtMGr8AwRJ1eNE3kp1FPh6Px8fA/pn6rrD9TItQ97HKGiOclIHbvooVef57WtzcVB15Rrx1/hwqJ7edPH3riEo3N1VHnhEp+XOonNx28vStIyrd3FQdeUak5M+hcnLbydO3jqh0c1N15BmRkj+HysltJ0/fOqLSzU3VkWdESv4cKie3nTx964hKNzdVR54RKflzqJzcdvL0rSMq3dxUHXlGpOTPoXJy28nTt46odHNTdavk+SthzV7jlzTmzJ087wm0mf5O3fP+594wp9Wj+Z4OPuGieqbd9lXez0JRMp2ZYRm7/bzKtq2POHdzU3Wr5ZnN8jsZtalMo+Zv51E5ue0jeX5Pi/mR9vd2UZud15k+e+lubqpuJM/yPz8jYzzbr8yfM11hUzm57VdZ5HdQvX+z8izveX7Xz/a3dP3OvkI+d9fg5qbqVJ7FOPdTNSXPXKO+d8s4Jaf22cjX1dra9vp70Tk+yv6ub3R9e88958W6/mzHqa+V47Ymn5dr5fOq5ui6anMyvKrJGdfbUeaqre73v47Vvb9ieza8yuvseptBzu2ovq2LPH/F3NQ9ZdfWv9daZZnHf+am7v0V27NznWev+1mW5On/PTP6jI3kWf8m1s/E0XHvczKj36jRTv2v8vyaCur9ToZ1rjNy6R1jpzxG13qVpzKss3KO1TgR7aNGO/XvzbPk4GSZa5657ZTH6Fqzc51Jj3vdXx33jDurz6jRTv2zWZ3Bt3R+d6/7q+NZ2fSMs1Meo2vNPiqDme09OczqM2q0U/+Zec7ynz3OTnmMrnW23YrjjRrt1H9Ff9aEAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAgisKvAXkNBuMQ=="
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
          x = 672,
          y = 368,
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
        }
      }
    }
  }
}
