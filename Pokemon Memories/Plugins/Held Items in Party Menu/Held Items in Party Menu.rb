#===============================================================================
# Pokémon party panel
#===============================================================================
class PokemonPartyPanel < Sprite
  attr_reader :pokemon
  attr_reader :active
  attr_reader :selected
  attr_reader :preselected
  attr_reader :switching
  attr_reader :text

  TEXT_BASE_COLOR    = Color.new(248, 248, 248)
  TEXT_SHADOW_COLOR  = Color.new(40, 40, 40)
  HP_BAR_WIDTH       = 96
  STATUS_ICON_WIDTH  = 44
  STATUS_ICON_HEIGHT = 16

  def initialize(pokemon, index, viewport = nil)
    super(viewport)
    @pokemon = pokemon
    @active = (index == 0)   # true = rounded panel, false = rectangular panel
    @refreshing = true
    self.x = (index % 2) * Graphics.width / 2
    self.y = (16 * (index % 2)) + (96 * (index / 2))
    @panelbgsprite = ChangelingSprite.new(0, 0, viewport)
    @panelbgsprite.z = self.z
    if @active   # Rounded panel
      @panelbgsprite.addBitmap("able", "Graphics/UI/Party/panel_round")
      @panelbgsprite.addBitmap("ablesel", "Graphics/UI/Party/panel_round_sel")
      @panelbgsprite.addBitmap("fainted", "Graphics/UI/Party/panel_round_faint")
      @panelbgsprite.addBitmap("faintedsel", "Graphics/UI/Party/panel_round_faint_sel")
      @panelbgsprite.addBitmap("swap", "Graphics/UI/Party/panel_round_swap")
      @panelbgsprite.addBitmap("swapsel", "Graphics/UI/Party/panel_round_swap_sel")
      @panelbgsprite.addBitmap("swapsel2", "Graphics/UI/Party/panel_round_swap_sel2")
    else   # Rectangular panel
      @panelbgsprite.addBitmap("able", "Graphics/UI/Party/panel_rect")
      @panelbgsprite.addBitmap("ablesel", "Graphics/UI/Party/panel_rect_sel")
      @panelbgsprite.addBitmap("fainted", "Graphics/UI/Party/panel_rect_faint")
      @panelbgsprite.addBitmap("faintedsel", "Graphics/UI/Party/panel_rect_faint_sel")
      @panelbgsprite.addBitmap("swap", "Graphics/UI/Party/panel_rect_swap")
      @panelbgsprite.addBitmap("swapsel", "Graphics/UI/Party/panel_rect_swap_sel")
      @panelbgsprite.addBitmap("swapsel2", "Graphics/UI/Party/panel_rect_swap_sel2")
    end
    @hpbgsprite = ChangelingSprite.new(0, 0, viewport)
    @hpbgsprite.z = self.z + 1
    @hpbgsprite.addBitmap("able", _INTL("Graphics/UI/Party/overlay_hp_back"))
    @hpbgsprite.addBitmap("fainted", _INTL("Graphics/UI/Party/overlay_hp_back_faint"))
    @hpbgsprite.addBitmap("swap", _INTL("Graphics/UI/Party/overlay_hp_back_swap"))
    # @ballsprite = ChangelingSprite.new(0, 0, viewport)
    # @ballsprite.z = self.z + 1
    # @ballsprite.addBitmap("desel", "Graphics/UI/Party/icon_ball")
    # @ballsprite.addBitmap("sel", "Graphics/UI/Party/icon_ball_sel")
    @pkmnsprite = PokemonIconSprite.new(pokemon, viewport)
    @pkmnsprite.setOffset(PictureOrigin::CENTER)
    @pkmnsprite.active = @active
    @pkmnsprite.z      = self.z + 2
    @helditemsprite = ItemIconSprite.new(0,0,@pokemon.item,viewport)
    @helditemsprite.blankzero = true
    @helditemsprite.z = self.z + 1
    @overlaysprite = BitmapSprite.new(Graphics.width, Graphics.height, viewport)
    @overlaysprite.z = self.z + 4
    pbSetSystemFont(@overlaysprite.bitmap)
    @hpbar    = AnimatedBitmap.new("Graphics/UI/Party/overlay_hp")
    @statuses = AnimatedBitmap.new(_INTL("Graphics/UI/statuses"))
    @selected      = false
    @preselected   = false
    @switching     = false
    @text          = nil
    @refreshBitmap = true
    @refreshing    = false
    refresh
  end

  def dispose
    @panelbgsprite.dispose
    @hpbgsprite.dispose
    #@ballsprite.dispose
    @pkmnsprite.dispose
    @helditemsprite.dispose
    @overlaysprite.bitmap.dispose
    @overlaysprite.dispose
    @hpbar.dispose
    @statuses.dispose
    super
  end

  def pokemon=(value)
    @pokemon = value
    @pkmnsprite.pokemon = value if @pkmnsprite && !@pkmnsprite.disposed?
    @helditemsprite.item = @pokemon.item
    @refreshBitmap = true
    refresh
  end

  
  def refresh_held_item_icon
    return if !@helditemsprite || @helditemsprite.disposed? || !@helditemsprite.visible
    @helditemsprite.x     = self.x + 30
    @helditemsprite.y     = self.y + 28
    @helditemsprite.color = self.color
  end
end