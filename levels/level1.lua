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
      data = "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z17Pr8ex5PI3f7opkAABAgQIECBAgAABAgQWBGbNoUcGX1q7l31hgHxMgAABAgQIECBAgAABAk8jcIWMXv9G/WnwFUqAAAECBAgQIECAAAECBAqBnNHzc9Jfa/F89mIwvCRAgAABAgQIECBAgAABAgQIECBAgAABAgQIEBgi8JKO8v6B5cOQ1h2EAAECBAgQIECAAAECBAgQyNl86bnIS89kis/99tP5Q4AAAQIECBAgQIAAAQIEjgnEnPlaNs/PR176banffh4bA3sTIECAAAECBAgQIECAwPMKtHK5DP6854PKCRAgQIAAAQIECBAgQGCeQGTy/BvzmC8vM7l58HljoSUCBAgQIECAAAECBAgQeC6BVibPvxuPXC6TP9f5oFoCBAgQIECAAAECBAgQmC/wbWryu7Tk341/Sks8zy2vPdMtIfgjQIAAAQIECBAgQIAAAQKTBb5O7ZXPdzNvPnkANEeAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAg0Bf4H5TA1GQ=="
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
