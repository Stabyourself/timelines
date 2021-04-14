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
  nextobjectid = 76,
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
      columns = 6,
      image = "../img/markers.png",
      imagewidth = 108,
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
      tilecount = 6,
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
        },
        {
          id = 5,
          type = "box",
          properties = {
            ["meta"] = false
          }
        }
      }
    },
    {
      name = "tiles",
      firstgid = 7,
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
      data = "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j/nyMpObBz9MV6kIAQIECBAgQIAAAQIECNyZQCuT5/+3KHK5TH5nHa45BAgQIECAAAECBAgQIHA4gc9Tjb5KS/7eeP1/HflNt8N1lwoRIECAAAECBAgQIECAwAMI1P/XkXnzB+h0TSRAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAicQ+D/Pz8D7"
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
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 384,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 384,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = false
          }
        }
      }
    }
  }
}
