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
  nextobjectid = 103,
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
      data = "eAHt3UuvI7l5BuABskrb8cbxaiYDeWEbHiPeBLAxF9vHV2TGziKZ7lz+/x8x2TlEc3g+UlUqqlTSeQRUV4l1IfmwJOitkvp89JHHVoE36QDf60zf33rw5/1HdfTqjspntWdStxyGAAECBAgQIECAAAECBK4kEGXCXpmsGA/CD1PxP3emH8W7rC4d1dGrOyqf1Z7VHbADAQIECBAgQIAAAQIECOwqEGXCXpmsGA/NKIvPMhvV0RuvqHxWe2IJpQQIECBAgAABAgQIECBwFIEoE/bKZMV41EZZfJbZqI7eeEXls9oTSyglQIAAAQIECBAgQIAAgaMIRJmwVyYrxqM2yuKzzEZ19MYrKp/VnlhCKQECBAgQIECAAAECBAgcRSDKhL0yWTEetVEWn2U2qqM3XlH5rPbEEkoJECBAgAABAgQIECBA4CgCUSbslcmK8aiNsvgss1EdvfGKyme1J5ZQSoAAAQIECBAgQIAAAQJHEYgyYa9MVoxHbZTFZ5mN6uiNV1Q+qz2xhFICBAgQIECAAAECBAgQOIpAlAl7ZbJiPGqjLD7LbFRHb7yi8lntiSWUEiBAgAABAgQIECBAgMBRBKJM2CuTFeNRG2XxWWajOnrjFZXPak8soZQAAQIECBAgQIAAAQIEjiIQZcJemawYj9ooi88yG9XRG6+ofFZ7YgmlBAgQIECAAAECBAgQIHAUgSgT9spkxXjURll8ltmojt54ReWz2hNLKCVAgAABAgQIECBAgACBowhEmbBXJivGozbK4rPMRnX0xisqn9WeWEIpAQIECBAgQIAAAQIECBxFIMqEvTJZMR61URafZTaqozdeUfms9sQSSgkQIECAAAECBAgQIEDgKAJRJuyVyYrxqI2y+CyzUR298YrKZ7UnllBKgAABAgQIECBAgAABAkcRiDJhr0xWjEdtlMVnmY3q6I1XVD6rPbGEUgIECBAgQIAAAQIECBA4ikCUCXtlsmI8ap+k4p+nKXKbZSbvx/ZKCRAgQIAAAQIECBAgQCAWiDJqr2xWdo1bct+ldeb/LHXlX56nTyd1S96fBOkwBAgQIECAAAECBAgQeCUCvWwflcv745MiZ/4fpGlWxq9rm5X3f5wO+v36wJYPJ/Amteh7kyZjfbjh1SACBAgQIECAAAECuwlEub5XJu+fH5aPz29y0Raz8n4e25z5c56UBS8aiqvulLP+KU291+Dacq/Zqw6XgxMgQIAAAQIECBA4tMCa/CA73G4oZ+b9Mubu9d9uPHs1zx5nr9metHICBAgQIECAAAECjy9Qst+S+V7Zof4+84x70PXx6u9Jzzj2XmfI7BxYxrvc63e/f6+RHNcze5z3es2Oe2UtAQIECBAgQIAAAQK3ECi5b8l8r+xQZ54ZddbHq/s54/5271pCfV1hRpbO/zdA+T8Ay7z3NwHqPq5ZrrN/af/Rr4ks9b+X/vTO1TXjWG874/Vzi/cldRIgQIAAAQIECBAgsF2gzgbnlpdkh5y/zmXEOqNF29aZZ0md5xTq47V9HGX+up1RZs/rT2lqjxk9H9Vzrv299dE1gNnXAqJrACU79+bRmPb6sLa8HZNTOkDk3Str+3PNtq7tW95+dK72+jQqz6+fbHa0fua+ehAgQIAAAQIECBAgcF2BUVZo1/Wyd53BTqm5ve1KT+pME21br5+Rz+rjtX3Kz9s6So7Nfam3b7dr19fbRst5/2vlrq/SsX+TpjLf41pA1Mdc1jpF10rSZhc9zo1lr0298tLWa43L2k7mcZv5vY3cv1Oa8vwofUxN8SBAgAABAgQIECBAYAeBXg6Kyks2+jy164vn6cs0P6Wp3r5sV3JzO6+3j7at19fHzcvR9u3x2+ej47XHv/bz6PpG6taUR8n6Zf7bzlHLtYCZufKc25JxG+XRck3plPoU1fVZKi/fbejNR/0t7Ru1ocM5vXj2NY3idaQ+TkdzQAIECBAgQIAAAQIEXgiULGAe58jZLtfM+3lwS9Z/MdBBQc79bQbuZeVLyttjjyxzXv80aGMp6mXgkvNH+5ZjlOscuS+9th0hE/f6WvuVfi8Zl7avuY9HuK5RxsWcAAECBAgQIECAAIHrCNQZwvL1M/+1834+S3r39aMzqGTgH6SVSzJzdIxeWTn2KF+Xc+6cS3ttouTdS9tc2tZm4dKeWZn43xPO18/TNz2opnyU9y/pd9TXWf1rmu4pAQIECBAgQIAAAQIHEij5xvz6WT8bl/vH7W8ORs/3uBf78ZXPyTav1+dbzrBLcnvOwZfk3VHXoixc2nbuGsTouGXdU1lI83q5Kn6x2Ob90ud83WSJ04sDPhe0YyDz96S2lb9Ju49ez3ndHq/pbb2wNwECBAgQIECAwCMIlGxjvk/ev8Q5ukZwj3mhzbHFYmmuzvsv3XbtazNq24w8/NfUkHJ//28LG1XaUnL+lozfVtlm/mt5tvW+pudl/Mr5Hc3La/oeX8evaSz1lQABAgQIECBw7wLRZ1Flx83+eWxyDvx1mn7WnHzn7iveOluUe+ntb86X5tm8/9JtG5qzT7e2rVfBU7WiXq6KXyyWtlyrr3Uelfdf8G8uqH3PvZfy38ztAAQIECBAgAABAgOBc59Hrd8n+5d7uW0Wjp5HOTBn/VOaRuNV7in6PvHgBTF51SX39yc34cXh6jw64zsMLyp45QW17+j1mF/z0Wv5lfPpPgECBAgQIECAwESB0edR68b5eZbP1s/9S7J+29ZrZ//cpjXfJ/hd2n40nTvlc335OkaZ1tR97thb1j9VO9fLVfHui20elfnnDkHr27728vOtr/m5LXY0AgQIECBAgACBRxWIPosq2yfnF+ct3+m9JOuXesu8zv45L3+epi+epy/TvGToNfNT2q89br3/L9P6n1bT79Ny/X/Zl9+8f5PK87p632j5lLYp/cnzuu4Z/Ynq3LNs5vWLKI9uOQcTt0clEPnW52Ze5l2BWSRAgAABAgQIELiaQPs51PPv5sY9PKLP/tG97nIS1PeyT6lwjzbOqiPf1+z9P/NPaV37eEoFS/LTrPYd9Tjl+sWM3B95zjx+O4av7XnkW59X+TXge/yv7azQXwIECBAgQIDAbQTqz6GWb5Odo7zf3uvO97jz/fB/TdMpTfc0ViXj93J+6s77x9PzvJ7lsnP56Z4strZ1Ri4feUbnYj0els8LjHxl/fN+tiBAgAABAgQIEJgnsDV/2H979o4y1lNniMv/3f7ztP7I9kszft3NqM9v0ganNB25r7do25bcP8qj0bmY+D1WCPBdgWVTAgQIECBAgACBqwrcIquo87v5NcpYT2dGfZQp9vKtM337dwQu+b5y6XPO+OW38ae0vFd/7rGekvuL15Lv++drRr3rRdG5mDb3WCHAdwWWTQkQIECAAAECBK4qcI8Z59HaHGWspzOjfuu8n7P+JZk+6lad73NuPaVpyRhH1xt6OXbJ8R5hm+hcisx758/S/aNjKvsg0Mv8fD8YWSJAgAABAgQIELi+wL1nnCjztfeaZz2/VpbMGeAPzfSX5nm7vpfX9hrPrbmlzvin1Nc17S5jHl1v6OWsNce/522Xjkvv/Fm6fxoyjzMC+Vxs33v+7cw+VhMgQIAAAQIECBCYKdB+Hr2351Hmm+lTH6uXkbbmw/Y72eW72aP5KTVsa71b9l+TC+tsX/p0aftz1j835jlnfZWm30yY/zYdY4vT3vsuHZd8LpfrJvVrfmke/a+0v8d6gY/X72IPAgQIECBAgAABAgR2ELhW3t87E86ob0muLDn/lMZmRp35GEvqzadCyfvfpuW3aXq3cp5zfjnGrLbvcZx87Sj/hv/rYCrjUX4zEVn+Iu33s2bfer9yvWbpfMn/J5CqGz6i+j9Pe3zxPH2Z5m17fpnK8t+zyH1Z+/hJ2qH8LYz2uEuf5/ovqXttW21PgAABAgQIECBAgMAcAXn/Q26PsmJRLvnslAp6GfeztK6+r1wv9343kfc5d28/bfL+UbL60qyfrwv8d5rK9mX/S+7vX9K3ntMl5b2x+ST1r3ZearnlvC/XH/7z/ags/yd/f2DJedTzyQZ/XF7diy3/lEou7fea8zRfW8h/Y3PpdYSyXb6O8h9p+iZNMx/FvNRTz2dcu5nZVsciQIAAAQIECBAgMFPg0s//vUxyz+W9TJnzy6/SVOfKaHmUNXMubTP/mgyVx7zk9Zzj36bp3cp5zvnlGGvHqWeTDvlR1Le1xz+3/aj+3Ialj5L9TmmHc3WO1l/ye5WcM7fUmw32yvv53KzP8dG5nTZ98bjkfaWM8dOLo20rGLWl1LmtBnsTIECAAAECBAgQOKbA6LPwKO884rprf/bPuXhLhspnUM7sb9P0rpr/T1r+3+fp/6rydruS9fMx1o7fOZu6b+11jbV1Rdufqz91KXyUfF/u6Z7SVtHx76EsG+yV97fWdcn7Shnjp9TPmY9RW0qdM+tzLAIECBAgQIAAAQJHERh9Fr6HDDSzjeV72tccmz+ng5fpknpyVv82TW/T9K6Z17k/5/82++d9S+Zf67YmF+XsPzvzr6k/Vf/+kbP+KU1r+3rU7Zecn//4vufxP2s8sveWawuXvK/kOvPf7Dj3dzzav+tx7vmoLUtMY02lBAgQIECAAAECBI4vUN+Xre89P+LykgyaP//ne8FH/l1vlPXfpTafKy9Z/xr399szvZxXS8yX5OucBb8Opvb+fbmPv/W780vadIttskN+9Pr9T2ldbVCfy6Pc2/Yl17N33i+vvbb9W5+fUl9K/z5Ly/m9rT4vi2kq9iBAgAABAgQIECBA4E4F1uSdNnscJf//Q7L/Nk1v0/Ru5fzS+/s5I32apkses3J/zmTlPm7djjVjWjLfPc9LNi2uS67LlbFbY5XruTTv52sRpzQd0bm8ruv2FdPUZA8CBAgQIECAAAECBO5UYE3eabNKyQnRvcbetYD2Hmy7Xbu+Pna5F9/O68zerlv6PB+j7d/o+Yw89Emqs72vOqqzXVf8s2HJ/Xm+ZUzbOu7h+ZaxWGNVvOtzcunyKY3LPVjmNm65lpV29yBAgAABAgQIECBA4CACa/LOmrySM1idQctyW1+b1dr1a+rcc9uc/dprFZcOac799Xep1/ajzaGndLy1x7jn7dv+L83gebvXZrVknNvXZGLyIECAAAECBAgQIEDgDgW2Zs1efuhlsFMyqvdps8W95P3ch7btW4Z/673+2tTyd88xHss93Nvf8iq2LwECBAgQIECAAIHjCVwr8y/JWTkzl3v/9/Bd9JyHyu/Dy2/AZ47oPV3vWDK+tlmetW9lde1zeubrw7EIECBAgAABAgQIEFgvcKvM334P4JSafqvcs6Temff0o1G61Tgs6bttjn1uXjI+7udHr0JlBAgQIECAAAECBB5PQNYc57m9spFxGI/DJbnWPrHpta9fPd67pB4RIECAAAECBAgQuF8BWTPORTkv7pmN7m0c6u+El987jOZb/n/CR83uxXCWTTneaByu8ZuU+33303ICBAgQIECAAAECjy+Qs2bOCLNyxyPks73u7ddn11HHIcqRa3Nj6VubRV/bOVdbFsOeTWt17nk5Xn1OWSZAgAABAgQIECBAgEAWaHPHa8ti9XWKPe/tt2dfGYdb+Nd5tOTLa+bI0tdc1y36W4/5Hsu3PK/a88xzAgQIECBAYF+BN6m6NX9HuGw7629C79tbtREgcHSBksVeQw6rs17OvNfMuEvHvfjPyMJRji95vp7fst91f+s2leVLzsOl/S51XHt+S9+l553tCBAgQIAAgfkCOeuf0lR/5ly67H7B/PFwRAIEPgi0OeyS3LX0/ezW2x0l63/Q//+ldgzW5tJHyJmXGDxCv9tzwXMCBAgQIEDgfgRyzs/36U9pGn3OHd2j8Hkm4XkQILCbQJu7rpX/R+97a/Pu0u29n+52GqmIAAECBAgQIPCwAlHOH3229Rn0YU8FHSNw9wJ1/t+a/ev3Qe97d39q6AABAgQIECBA4NUIlIxf38/32fbVDL+OEngVAj9MvRx9V+ncOr9PehWniU4SIECAAAECBB5CIMr4+fNuyfnuXz3EMOsEAQLPAvW9/qXfoa+3857oVCJAgAABAgQIELgHgZ+kRv4qTfmzbPsdV/ew7mEEtZEAAQIECBAgQIAAAQIECIwF2nte7mGNvawlQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgcDSBvwOhXe3y"
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
        }
      }
    }
  }
}
