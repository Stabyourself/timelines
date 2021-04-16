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
  nextobjectid = 108,
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
      columns = 8,
      image = "../img/markers.png",
      imagewidth = 144,
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
      tilecount = 8,
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
        },
        {
          id = 6,
          type = "moving-platform",
          properties = {
            ["differenceX"] = 0,
            ["differenceY"] = 0,
            ["travelTime"] = 2,
            ["waitTime"] = 0
          }
        },
        {
          id = 7,
          type = "sand-upgrade"
        }
      }
    },
    {
      name = "tiles",
      firstgid = 9,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 9,
      image = "../img/tiles.png",
      imagewidth = 162,
      imageheight = 288,
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
              name = "ground",
              probability = 1,
              tile = 27,
              properties = {}
            },
            {
              color = { 0, 0, 255 },
              name = "tree",
              probability = 1,
              tile = 108,
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
            },
            {
              wangid = { 0, 0, 0, 0, 2, 0, 0, 0 },
              tileid = 81
            },
            {
              wangid = { 0, 0, 2, 2, 2, 0, 0, 0 },
              tileid = 82
            },
            {
              wangid = { 0, 0, 2, 2, 2, 2, 2, 0 },
              tileid = 83
            },
            {
              wangid = { 0, 0, 0, 0, 2, 2, 2, 0 },
              tileid = 84
            },
            {
              wangid = { 2, 0, 2, 2, 2, 2, 2, 0 },
              tileid = 85
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 2, 2 },
              tileid = 86
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 2, 2 },
              tileid = 87
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 2, 0 },
              tileid = 88
            },
            {
              wangid = { 2, 0, 2, 0, 2, 2, 2, 0 },
              tileid = 89
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 0, 0 },
              tileid = 90
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 0, 0 },
              tileid = 91
            },
            {
              wangid = { 2, 2, 2, 2, 2, 2, 2, 2 },
              tileid = 92
            },
            {
              wangid = { 2, 0, 0, 0, 2, 2, 2, 2 },
              tileid = 93
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 2, 0 },
              tileid = 94
            },
            {
              wangid = { 2, 0, 2, 0, 2, 2, 2, 2 },
              tileid = 95
            },
            {
              wangid = { 2, 2, 2, 0, 2, 2, 2, 0 },
              tileid = 96
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 2, 0 },
              tileid = 97
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 2, 2 },
              tileid = 98
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 0, 0 },
              tileid = 99
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 0, 0 },
              tileid = 100
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 2, 2 },
              tileid = 101
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 2, 2 },
              tileid = 102
            },
            {
              wangid = { 2, 2, 2, 2, 2, 2, 2, 0 },
              tileid = 104
            },
            {
              wangid = { 2, 0, 2, 2, 2, 2, 2, 2 },
              tileid = 105
            },
            {
              wangid = { 0, 0, 2, 0, 2, 0, 0, 0 },
              tileid = 106
            },
            {
              wangid = { 0, 0, 0, 0, 2, 0, 2, 0 },
              tileid = 107
            },
            {
              wangid = { 0, 0, 2, 0, 0, 0, 0, 0 },
              tileid = 109
            },
            {
              wangid = { 0, 0, 2, 0, 0, 0, 2, 0 },
              tileid = 110
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 2, 0 },
              tileid = 111
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 2, 0 },
              tileid = 112
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 2, 2 },
              tileid = 113
            },
            {
              wangid = { 2, 2, 2, 0, 2, 2, 2, 2 },
              tileid = 114
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 0, 0 },
              tileid = 115
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 2, 0 },
              tileid = 116
            },
            {
              wangid = { 0, 0, 2, 2, 2, 0, 2, 0 },
              tileid = 117
            },
            {
              wangid = { 0, 0, 2, 0, 2, 2, 2, 0 },
              tileid = 118
            },
            {
              wangid = { 0, 0, 2, 0, 2, 0, 2, 0 },
              tileid = 119
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 0, 0 },
              tileid = 120
            },
            {
              wangid = { 2, 0, 0, 0, 2, 2, 2, 0 },
              tileid = 121
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 0, 0 },
              tileid = 122
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 2, 2 },
              tileid = 123
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 0, 0 },
              tileid = 124
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 2, 0 },
              tileid = 125
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 2, 0 },
              tileid = 126
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 2, 2 },
              tileid = 127
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 2, 0 },
              tileid = 128
            }
          }
        }
      },
      tilecount = 144,
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
        },
        {
          id = 81,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 82,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 83,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 84,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 85,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 86,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 87,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 88,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 89,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 90,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 91,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 92,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 93,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 94,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 95,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 96,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 97,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 98,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 99,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 100,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 101,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 102,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 104,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 105,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 106,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 107,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 108,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 109,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 110,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 111,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 112,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 113,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 114,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 115,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 116,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 117,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 118,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 119,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 120,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 121,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 122,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 123,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 124,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 125,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 126,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 127,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 128,
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
      data = "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4LkFZM3pXHetZ436Ybof7jnfnrnuc9m7zOGjluX55/5vjtYTIECAAAECBAhcV0DW7GfNo5/tlz19b/2wNivu+f8Tnjkz76lbGI6yieMtzeayd/kJtEyAAAECBAgQIEDgMQVy1swZYVTu2JOBzrJvzk7XzkNn7YdWjlxrE22rs+izjbnSMgx7NrXV3Ps43mN+S2kVAQIECBAgQIAAAQJ7BOrc8WxZrLzXcM1n+3WfRT/cwr/Mo5Evj8yR0dZ8rlu0t+zzayzfclzV48x7AgQIECBA4LoC76fTrfl3hGPbUf8m9HVb62wECJxdILLYM+SwMuvlzHtkxl3a7+E/Igu3cnzk+XJ+y3aX7S3rFMtbxuHSdsc5jp7f0nfpuLMdAQIECBAgMF4gZ/1LmsprzqXLnheM7w9HJEDg5wJ1DtuSu5Z+n916u7Nk/Z/r/3Sp7oO1ufQRcuYWg0dodz0WvCdAgAABAgTuRyDn/Pyc/pKmqevcqWcUrmcSnhcBAlcTqHPXUfl/6ntvbd5dur3v06sNIyciQIAAAQIECDysQCvnT13bugZ92KGgYQTuXqDM/3uzf/k96Hvv7oeGBhAgQOBpBeJa39/dPu0Q0PAnFIjPffk837XtEw4ETSbwwAJfTW2b+q3S3Dp/n/TAg0PTCBAg8EQCcS/cvesn6nRNfUqBVsbP17uR830HPOWw0GgCDysQ1zdLfz9fb+c78WGHhoYRIECAAAECBB5K4GupNd9KU76erX/j6hnWQ3W1xhAgQIAAAQIECBAgQIDAkwrUz7w8w3rSgaDZBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECdyvw/3nKRfw="
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
          x = 232,
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
          x = 224,
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
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3120,
          y = 736,
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
          x = 736,
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
          x = 5040,
          y = 736,
          width = 16,
          height = 80,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4848,
          y = 656,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 91,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5472,
          y = 656,
          width = 64,
          height = 16,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 92,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5584,
          y = 768,
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
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5696,
          y = 672,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5920,
          y = 688,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 96,
            ["waitTime"] = 0
          }
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6064,
          y = 688,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 96,
            ["waitTime"] = 0
          }
        },
        {
          id = 98,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 8,
          visible = true,
          properties = {}
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 100,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 101,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 384,
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
          id = 102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 384,
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
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6384,
          y = 528,
          width = 16,
          height = 48,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6384,
          y = 544,
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
          id = 105,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 704,
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
          id = 106,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
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
          id = 107,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 672,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        }
      }
    }
  }
}
