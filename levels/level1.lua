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
  nextobjectid = 74,
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
          type = "arrow-shooter",
          properties = {
            ["dir"] = "",
            ["spawnTime"] = 2
          }
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
      imageheight = 162,
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
      tilecount = 81,
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
          id = 61,
          properties = {
            ["collidable"] = true,
            ["spike"] = "up"
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
        },
        {
          id = 66,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 67,
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
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3160,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3344,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4000,
          y = 656,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "right",
            ["spawnTime"] = 2
          }
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 320,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
