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
      data = "eAHt2stuFDEQQNHZ8FgAG8IG2BD+/x9xiZRUslzp8qNm7NFtqdUTt+30nJshAvFyu91eBs8fZd0ux/fyIN772Ok5s708g8j4Tk70/P+TEunmzaFn9qetf3+vVWScnv3e2Ssi3bw59Myu07+/1yoyTs9+7+wVkW7eHHpm1+nf32sVGadnv3f2ikg3bw49s+v07++1iozTs987e0WkmzeHntl1+vf3WkXG6dnvnb0i0s2bQ8/sOv37e60i4/Ts985eEenmzaFndp3+/b1WkXF69ntnr4h08+bs1PNngVr9nB/KnivP7Jayv2cQGd+pp7yXuumvMibnb7m56Jjtu+gx3G0i3bw5u/WUN6lNVzb08K7aeusyx71WkfEde4qVfCbvdXhN7/X96+8T6ebNmen5pTzI17fzW/1Qh31tmz760b1WkfGZnvb/+8zs82g//f7SdIcj0s2b0+rwsbwpOfWQz2Hr87eyp/2s62e+df1UnqXn1Pdw0tVrFRlv9ZT3/rmcaiz7tObZnjJH/FvddR/tU8+R+5FnlTn2z8XI61b7ss3WR9TCmyfOf8r5+nb+LVcZq+drD73W9/Vrva9XHbdXvSdXO371OtLwao40tkeruR2rbezajNdXBs90X/yuer13v/aXbq359bx7fv1Mva7ei7jW/qPWXkvZ/5HHlcEz3Rdn23PU/b2W9Oz7HTjz8zXT0/5OtD8TrdejPycr1s34nLb2qqf+XUuvPQ1t1xVdRvc4rcnM81719Axtq8hrb597jM/4nLZ2tKd2iLSUOY88Tmsy87zibJuMuNv13uuRfVetmfE5ba2Y2Qby71i9p13vvV7VZmSf05rMPK/4eA1Wjo90WLVmxue0tSt7rvJfvc9pTWaed7XdjvvN+Jy2dkd/ngkBBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEENhV4B/ly3Qy"
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
