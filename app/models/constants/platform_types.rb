class PlatformTypes
  extend ConstantRecordMixin

  PS4        = 'PS4'
  XBOX_ONE   = 'XBOX_ONE'
  SWITCH     = 'SWITCH'

  self.columns :id, :name, :display_name, :debut_year, :media_type, :supports_4k

  self.data [1,  PS4,       'Playstation 4',    2009, 'disk',      true  ],
            [2,  XBOX_ONE,  'XBox One',        2010, 'disk',      true  ],
            [3,  SWITCH,    'Nintendo Switch', 2011, 'cartridge', false ]
end