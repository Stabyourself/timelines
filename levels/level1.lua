return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 1020,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 79,
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
        },
        {
          id = 72,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 73,
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
      width = 1020,
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
      data = "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8piHzvrZZ6/xt7Tfb6WPrzWWXIcAAQIECBAgQIAAgccl8JCZK+etF8Ui7z+usbWkNWvvV5T3LtZuH+GexxIjxxAgQIAAAQIECBAgQGCtwENl/vpzAPX8/9J52j2OM/e7djQ5jwABAgQIECBAgAABAgSOJPBQmX+PrD6jTHn/SKNTXQgQIECAAAECBAgQIEBgi4DM/+p3+uX9LSPJuQQIECBAgAABAgQIECBwNIH4PvUev+M3Y979WmXI+0cbmepDgAABAgQIECBAgAABAjMEIve3fgvtKdwLkPdnjCJlECBAgAABAgQItASepZ29vys82v9WqzD7CBAgMFFgdC+gdX/gFvf57faJA0ZRBAgQIECAAAECLwVy1l/7O9XmpF4y2iBAgAABAgQIECBAgAABAocQiDn9c1n/eaptb77MnNQhulIlCBAgQIAAAQIECBAgQIDAG62cL9MbGAQIECBAgAABAgQIECBA4PYEIuPn7+LHfH6Z8c3T316fqjEBAgQIECBAgAABAgQIPE2BVsbPf1sqcr6M/zTHhVYTIECAAAECBAgQIECAwO0KfJCq/kla8vfu679l5Tf2brdf1ZwAAQIECBAgQIAAAQIECIRA/beszOuHjDUBAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgACB2xD4P9loEf4="
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
          y = 400,
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
          x = 1600,
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
          x = 1168,
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
          x = 1344,
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
          x = 1872,
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
          y = 400,
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
          x = 2144,
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
          x = 2408,
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
          x = 2496,
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
          x = 2560,
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
          x = 2976,
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
          x = 3120,
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
          x = 3184,
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
          x = 2880,
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
          x = 2864,
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
          x = 2864,
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
          x = 3480,
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
          x = 3664,
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
          x = 4320,
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
          x = 800,
          y = 400,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4512,
          y = 688,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "right"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4704,
          y = 688,
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
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4880,
          y = 736,
          width = 16,
          height = 80,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        }
      }
    }
  }
}
