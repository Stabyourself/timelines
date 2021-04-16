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
      data = "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4Oepl6PvKi2t8/ukN3Ga6CQBAgQIECBA4FUIRBk/f94tOd/9q1cxzDpBgMCzQH2vf+136OvtvCc6lQgQIECAAAECBB5B4Bepkb9JU/4s237H1T2sRxhBbSRAgAABAgQIECBAgAABAmOB9p6Xe1hjL2sJECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQInE3g/wDtxe40"
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
