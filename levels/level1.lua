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
  nextobjectid = 59,
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
      data = "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Kdefsb2e21+N6UACBAgQIECAAAECBAgQIDAg8FIZ/YysvacO+XzgYnIqAQIECBAgQIAAAQIECAwJyOifPh8vnw9dSk4mQIAAAQIECBAgQIAAgUGBnNG/TMsR3xu3Zx77pc6RzwcvJKcTIECAAAECBAgQIECAwBSByOk5q9fLM2R3+XzKZaQQAgQIECBAgACBhsCbtO3tjuVdoyybCBB4boFedq+z/F3ff/XcQ6z3BAgQIECAAAECBwnkbL73e5HNIR00KIolQIAAAQIECBAgQIAAgacRiDnzR9n8QxJZmuMyh/Q0l4uOEiBAgAABAgQIECBAgMBkgVYul8EnIyuOAAECBAgQIECAAAECBAg0BCKT58+Yx3x5mcnNgzfQbCJAgAABAgQIECBAgAABAhMEWpk8/xZR5HKZfAKyIggQIECAAAECBAgQIECAQEfgm7Tvu7Tkz43Xv3XkO906cHYRIECAAAECBAgQIECAAIGDBOrfOjJvfhC0YgkQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAIFNAv8DpAlhKQ=="
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
          id = 58,
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
        }
      }
    }
  }
}
