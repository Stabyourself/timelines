return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 1000,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 60,
  backgroundcolor = { 72, 72, 252 },
  properties = {},
  tilesets = {
    {
      name = "markers",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 5,
      image = "../img/markers.png",
      imagewidth = 90,
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
      tilecount = 5,
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
            ["meta"] = false
          }
        },
        {
          id = 2,
          type = "door",
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 3,
          type = "shrine"
        },
        {
          id = 4,
          type = "arrow-right"
        }
      }
    },
    {
      name = "tiles",
      firstgid = 6,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 9,
      image = "../img/tiles.png",
      imagewidth = 162,
      imageheight = 144,
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
      wangsets = {
        {
          name = "wall",
          tile = 27,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "wall",
              probability = 1,
              tile = 27,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 0, 1, 0, 0, 0 },
              tileid = 0
            },
            {
              wangid = { 0, 0, 1, 1, 1, 0, 0, 0 },
              tileid = 1
            },
            {
              wangid = { 0, 0, 1, 1, 1, 1, 1, 0 },
              tileid = 2
            },
            {
              wangid = { 0, 0, 0, 0, 1, 1, 1, 0 },
              tileid = 3
            },
            {
              wangid = { 1, 0, 1, 1, 1, 1, 1, 0 },
              tileid = 4
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 1, 1 },
              tileid = 5
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 1, 1 },
              tileid = 6
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 1, 0 },
              tileid = 7
            },
            {
              wangid = { 1, 0, 1, 0, 1, 1, 1, 0 },
              tileid = 8
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 0, 0 },
              tileid = 9
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 0, 0 },
              tileid = 10
            },
            {
              wangid = { 1, 1, 1, 1, 1, 1, 1, 1 },
              tileid = 11
            },
            {
              wangid = { 1, 0, 0, 0, 1, 1, 1, 1 },
              tileid = 12
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 1, 0 },
              tileid = 13
            },
            {
              wangid = { 1, 0, 1, 0, 1, 1, 1, 1 },
              tileid = 14
            },
            {
              wangid = { 1, 1, 1, 0, 1, 1, 1, 0 },
              tileid = 15
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 1, 0 },
              tileid = 16
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 1, 1 },
              tileid = 17
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 0, 0 },
              tileid = 18
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 0, 0 },
              tileid = 19
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 1, 1 },
              tileid = 20
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 1, 1 },
              tileid = 21
            },
            {
              wangid = { 1, 1, 1, 1, 1, 1, 1, 0 },
              tileid = 23
            },
            {
              wangid = { 1, 0, 1, 1, 1, 1, 1, 1 },
              tileid = 24
            },
            {
              wangid = { 0, 0, 1, 0, 1, 0, 0, 0 },
              tileid = 25
            },
            {
              wangid = { 0, 0, 0, 0, 1, 0, 1, 0 },
              tileid = 26
            },
            {
              wangid = { 0, 0, 1, 0, 0, 0, 0, 0 },
              tileid = 28
            },
            {
              wangid = { 0, 0, 1, 0, 0, 0, 1, 0 },
              tileid = 29
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 1, 0 },
              tileid = 30
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 1, 0 },
              tileid = 31
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 1, 1 },
              tileid = 32
            },
            {
              wangid = { 1, 1, 1, 0, 1, 1, 1, 1 },
              tileid = 33
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 0, 0 },
              tileid = 34
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 1, 0 },
              tileid = 35
            },
            {
              wangid = { 0, 0, 1, 1, 1, 0, 1, 0 },
              tileid = 36
            },
            {
              wangid = { 0, 0, 1, 0, 1, 1, 1, 0 },
              tileid = 37
            },
            {
              wangid = { 0, 0, 1, 0, 1, 0, 1, 0 },
              tileid = 38
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 0, 0 },
              tileid = 39
            },
            {
              wangid = { 1, 0, 0, 0, 1, 1, 1, 0 },
              tileid = 40
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 0, 0 },
              tileid = 41
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 1, 1 },
              tileid = 42
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 0, 0 },
              tileid = 43
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 1, 0 },
              tileid = 44
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 1, 0 },
              tileid = 45
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 1, 1 },
              tileid = 46
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 1, 0 },
              tileid = 47
            }
          }
        }
      },
      tilecount = 72,
      tiles = {
        {
          id = 0,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 1,
          properties = {
            ["collidable"] = true
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
            ["collidable"] = true
          }
        },
        {
          id = 4,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 5,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 6,
          properties = {
            ["collidable"] = true
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
          id = 10,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 11,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 12,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 13,
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
          id = 17,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 18,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 19,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 20,
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
          id = 23,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 24,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 25,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 26,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 27,
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
        },
        {
          id = 31,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 32,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 33,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 34,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 35,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 36,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 37,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 38,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 39,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 40,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 41,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 42,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 43,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 44,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 45,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 46,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 47,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 48,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 49,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 50,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 51,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 52,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 53,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 54,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 55,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 56,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 57,
          properties = {
            ["collidable"] = true,
            ["spike"] = "up"
          }
        },
        {
          id = 58,
          properties = {
            ["collidable"] = true,
            ["spike"] = "right"
          }
        },
        {
          id = 59,
          properties = {
            ["collidable"] = true,
            ["spike"] = "left"
          }
        },
        {
          id = 60,
          properties = {
            ["collidable"] = true,
            ["spike"] = "down"
          }
        },
        {
          id = 63,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 64,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 65,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
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
      width = 1000,
      height = 100,
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
      data = "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"
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
          x = 296,
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
          x = 1280,
          y = 608,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 848,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
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
          x = 1552,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
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
          properties = {
            ["used"] = true
          }
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1824,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2088,
          y = 496,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2656,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2800,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2864,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2544,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2544,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
