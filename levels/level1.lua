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
  nextobjectid = 53,
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
      data = "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IECgEFjLykuZe8/n9Tx7Pb8ex5LLi4HxkgABAgQIECBAgAABAgReSmDWHHpk8KW1e9lf6rRTLAECBAgQIECAAAECBAg0BK6Q0evfqDe66SMCBAgQIECAAAECBAgQIPD0Ajmj5+ekv9XyzdMLK5AAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQGC2wLvU4JcHlvezO6o9AgQIECBAgAABAgQIECDwpAI5my89F3npmUzxud9+PulJoSwCBAgQIECAAAECBAgQmCYQc+Zr2Tw/H3npt6V++zltuDREgAABAgQIECBAgAABAk8m0MrlMviTDbJyCBAgQIAAAQIECBAgQOCSApHJ82/MY768zOTmwS85bDpFgAABAgQIECBAgAABAk8g0Mrk+Xfjkctl8icYZCUQIECAAAECBAgQIECAwKUFvku9+z4t+XfjH9MSz3PLa890Swj+CBAgQIAAAQIECBAgQIDAZIGvU3vl893Mm08eAM0RIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECTYH/Aci7MuA="
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
        }
      }
    }
  }
}
