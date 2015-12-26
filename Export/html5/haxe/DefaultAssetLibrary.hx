package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_kenvector_future_thin_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_kenvector_future_ttf);
		
		
		
		
		
		
		#end
		
		#if flash
		
		className.set ("ui/cursorHand_grey.png", __ASSET__ui_cursorhand_grey_png);
		type.set ("ui/cursorHand_grey.png", AssetType.IMAGE);
		className.set ("ui/blue_button08.png", __ASSET__ui_blue_button08_png);
		type.set ("ui/blue_button08.png", AssetType.IMAGE);
		className.set ("ui/yellow_button07.png", __ASSET__ui_yellow_button07_png);
		type.set ("ui/yellow_button07.png", AssetType.IMAGE);
		className.set ("ui/red_button00.png", __ASSET__ui_red_button00_png);
		type.set ("ui/red_button00.png", AssetType.IMAGE);
		className.set ("ui/icons/larger.png", __ASSET__ui_icons_larger_png);
		type.set ("ui/icons/larger.png", AssetType.IMAGE);
		className.set ("ui/icons/home.png", __ASSET__ui_icons_home_png);
		type.set ("ui/icons/home.png", AssetType.IMAGE);
		className.set ("ui/icons/audioOn.png", __ASSET__ui_icons_audioon_png);
		type.set ("ui/icons/audioOn.png", AssetType.IMAGE);
		className.set ("ui/icons/smaller.png", __ASSET__ui_icons_smaller_png);
		type.set ("ui/icons/smaller.png", AssetType.IMAGE);
		className.set ("ui/icons/audioOff.png", __ASSET__ui_icons_audiooff_png);
		type.set ("ui/icons/audioOff.png", AssetType.IMAGE);
		className.set ("ui/icons/gamepad.png", __ASSET__ui_icons_gamepad_png);
		type.set ("ui/icons/gamepad.png", AssetType.IMAGE);
		className.set ("ui/icons/return.png", __ASSET__ui_icons_return_png);
		type.set ("ui/icons/return.png", AssetType.IMAGE);
		className.set ("ui/icons/musicOn.png", __ASSET__ui_icons_musicon_png);
		type.set ("ui/icons/musicOn.png", AssetType.IMAGE);
		className.set ("ui/icons/musicOff.png", __ASSET__ui_icons_musicoff_png);
		type.set ("ui/icons/musicOff.png", AssetType.IMAGE);
		className.set ("ui/icons/gear.png", __ASSET__ui_icons_gear_png);
		type.set ("ui/icons/gear.png", AssetType.IMAGE);
		className.set ("ui/red_button07.png", __ASSET__ui_red_button07_png);
		type.set ("ui/red_button07.png", AssetType.IMAGE);
		className.set ("ui/red_button08.png", __ASSET__ui_red_button08_png);
		type.set ("ui/red_button08.png", AssetType.IMAGE);
		className.set ("ui/green_button08.png", __ASSET__ui_green_button08_png);
		type.set ("ui/green_button08.png", AssetType.IMAGE);
		className.set ("ui/blue_button00.png", __ASSET__ui_blue_button00_png);
		type.set ("ui/blue_button00.png", AssetType.IMAGE);
		className.set ("ui/grey_button07.png", __ASSET__ui_grey_button07_png);
		type.set ("ui/grey_button07.png", AssetType.IMAGE);
		className.set ("ui/green_button01.png", __ASSET__ui_green_button01_png);
		type.set ("ui/green_button01.png", AssetType.IMAGE);
		className.set ("ui/green_button00.png", __ASSET__ui_green_button00_png);
		type.set ("ui/green_button00.png", AssetType.IMAGE);
		className.set ("ui/grey_button08.png", __ASSET__ui_grey_button08_png);
		type.set ("ui/grey_button08.png", AssetType.IMAGE);
		className.set ("ui/blue_button01.png", __ASSET__ui_blue_button01_png);
		type.set ("ui/blue_button01.png", AssetType.IMAGE);
		className.set ("ui/yellow_button08.png", __ASSET__ui_yellow_button08_png);
		type.set ("ui/yellow_button08.png", AssetType.IMAGE);
		className.set ("ui/blue_button07.png", __ASSET__ui_blue_button07_png);
		type.set ("ui/blue_button07.png", AssetType.IMAGE);
		className.set ("ui/grey_button00.png", __ASSET__ui_grey_button00_png);
		type.set ("ui/grey_button00.png", AssetType.IMAGE);
		className.set ("ui/yellow_button00.png", __ASSET__ui_yellow_button00_png);
		type.set ("ui/yellow_button00.png", AssetType.IMAGE);
		className.set ("ui/red_button01.png", __ASSET__ui_red_button01_png);
		type.set ("ui/red_button01.png", AssetType.IMAGE);
		className.set ("ui/grey_button01.png", __ASSET__ui_grey_button01_png);
		type.set ("ui/grey_button01.png", AssetType.IMAGE);
		className.set ("ui/yellow_button01.png", __ASSET__ui_yellow_button01_png);
		type.set ("ui/yellow_button01.png", AssetType.IMAGE);
		className.set ("ui/green_button07.png", __ASSET__ui_green_button07_png);
		type.set ("ui/green_button07.png", AssetType.IMAGE);
		className.set ("sounds/clic.ogg", __ASSET__sounds_clic_ogg);
		type.set ("sounds/clic.ogg", AssetType.SOUND);
		className.set ("fonts/kenvector_future_thin.woff", __ASSET__fonts_kenvector_future_thin_woff);
		type.set ("fonts/kenvector_future_thin.woff", AssetType.BINARY);
		className.set ("fonts/kenvector_future.svg", __ASSET__fonts_kenvector_future_svg);
		type.set ("fonts/kenvector_future.svg", AssetType.TEXT);
		className.set ("fonts/kenvector_future_thin.eot", __ASSET__fonts_kenvector_future_thin_eot);
		type.set ("fonts/kenvector_future_thin.eot", AssetType.BINARY);
		className.set ("fonts/kenvector_future.woff", __ASSET__fonts_kenvector_future_woff);
		type.set ("fonts/kenvector_future.woff", AssetType.BINARY);
		className.set ("fonts/kenvector_future.eot", __ASSET__fonts_kenvector_future_eot);
		type.set ("fonts/kenvector_future.eot", AssetType.BINARY);
		className.set ("fonts/kenvector_future_thin.ttf", __ASSET__fonts_kenvector_future_thin_ttf);
		type.set ("fonts/kenvector_future_thin.ttf", AssetType.FONT);
		className.set ("fonts/kenvector_future.ttf", __ASSET__fonts_kenvector_future_ttf);
		type.set ("fonts/kenvector_future.ttf", AssetType.FONT);
		className.set ("fonts/kenvector_future_thin.svg", __ASSET__fonts_kenvector_future_thin_svg);
		type.set ("fonts/kenvector_future_thin.svg", AssetType.TEXT);
		className.set ("assets/scenes/a.json", __ASSET__assets_scenes_a_json);
		type.set ("assets/scenes/a.json", AssetType.TEXT);
		className.set ("assets/bitmaps/shipBlue_manned.png", __ASSET__assets_bitmaps_shipblue_manned_png);
		type.set ("assets/bitmaps/shipBlue_manned.png", AssetType.IMAGE);
		className.set ("assets/sounds/music/Pixelland.ogg", __ASSET__assets_sounds_music_pixelland_ogg);
		type.set ("assets/sounds/music/Pixelland.ogg", AssetType.MUSIC);
		className.set ("config/config.json", __ASSET__config_config_json);
		type.set ("config/config.json", AssetType.TEXT);
		
		
		#elseif html5
		
		var id;
		id = "ui/cursorHand_grey.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/blue_button08.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/yellow_button07.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/red_button00.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/larger.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/home.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/audioOn.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/smaller.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/audioOff.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/gamepad.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/return.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/musicOn.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/musicOff.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/icons/gear.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/red_button07.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/red_button08.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/green_button08.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/blue_button00.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/grey_button07.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/green_button01.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/green_button00.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/grey_button08.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/blue_button01.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/yellow_button08.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/blue_button07.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/grey_button00.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/yellow_button00.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/red_button01.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/grey_button01.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/yellow_button01.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "ui/green_button07.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "sounds/clic.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "fonts/kenvector_future_thin.woff";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "fonts/kenvector_future.svg";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "fonts/kenvector_future_thin.eot";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "fonts/kenvector_future.woff";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "fonts/kenvector_future.eot";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "fonts/kenvector_future_thin.ttf";
		className.set (id, __ASSET__fonts_kenvector_future_thin_ttf);
		
		type.set (id, AssetType.FONT);
		id = "fonts/kenvector_future.ttf";
		className.set (id, __ASSET__fonts_kenvector_future_ttf);
		
		type.set (id, AssetType.FONT);
		id = "fonts/kenvector_future_thin.svg";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/scenes/a.json";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/bitmaps/shipBlue_manned.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sounds/music/Pixelland.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "config/config.json";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("ui/cursorHand_grey.png", __ASSET__ui_cursorhand_grey_png);
		type.set ("ui/cursorHand_grey.png", AssetType.IMAGE);
		
		className.set ("ui/blue_button08.png", __ASSET__ui_blue_button08_png);
		type.set ("ui/blue_button08.png", AssetType.IMAGE);
		
		className.set ("ui/yellow_button07.png", __ASSET__ui_yellow_button07_png);
		type.set ("ui/yellow_button07.png", AssetType.IMAGE);
		
		className.set ("ui/red_button00.png", __ASSET__ui_red_button00_png);
		type.set ("ui/red_button00.png", AssetType.IMAGE);
		
		className.set ("ui/icons/larger.png", __ASSET__ui_icons_larger_png);
		type.set ("ui/icons/larger.png", AssetType.IMAGE);
		
		className.set ("ui/icons/home.png", __ASSET__ui_icons_home_png);
		type.set ("ui/icons/home.png", AssetType.IMAGE);
		
		className.set ("ui/icons/audioOn.png", __ASSET__ui_icons_audioon_png);
		type.set ("ui/icons/audioOn.png", AssetType.IMAGE);
		
		className.set ("ui/icons/smaller.png", __ASSET__ui_icons_smaller_png);
		type.set ("ui/icons/smaller.png", AssetType.IMAGE);
		
		className.set ("ui/icons/audioOff.png", __ASSET__ui_icons_audiooff_png);
		type.set ("ui/icons/audioOff.png", AssetType.IMAGE);
		
		className.set ("ui/icons/gamepad.png", __ASSET__ui_icons_gamepad_png);
		type.set ("ui/icons/gamepad.png", AssetType.IMAGE);
		
		className.set ("ui/icons/return.png", __ASSET__ui_icons_return_png);
		type.set ("ui/icons/return.png", AssetType.IMAGE);
		
		className.set ("ui/icons/musicOn.png", __ASSET__ui_icons_musicon_png);
		type.set ("ui/icons/musicOn.png", AssetType.IMAGE);
		
		className.set ("ui/icons/musicOff.png", __ASSET__ui_icons_musicoff_png);
		type.set ("ui/icons/musicOff.png", AssetType.IMAGE);
		
		className.set ("ui/icons/gear.png", __ASSET__ui_icons_gear_png);
		type.set ("ui/icons/gear.png", AssetType.IMAGE);
		
		className.set ("ui/red_button07.png", __ASSET__ui_red_button07_png);
		type.set ("ui/red_button07.png", AssetType.IMAGE);
		
		className.set ("ui/red_button08.png", __ASSET__ui_red_button08_png);
		type.set ("ui/red_button08.png", AssetType.IMAGE);
		
		className.set ("ui/green_button08.png", __ASSET__ui_green_button08_png);
		type.set ("ui/green_button08.png", AssetType.IMAGE);
		
		className.set ("ui/blue_button00.png", __ASSET__ui_blue_button00_png);
		type.set ("ui/blue_button00.png", AssetType.IMAGE);
		
		className.set ("ui/grey_button07.png", __ASSET__ui_grey_button07_png);
		type.set ("ui/grey_button07.png", AssetType.IMAGE);
		
		className.set ("ui/green_button01.png", __ASSET__ui_green_button01_png);
		type.set ("ui/green_button01.png", AssetType.IMAGE);
		
		className.set ("ui/green_button00.png", __ASSET__ui_green_button00_png);
		type.set ("ui/green_button00.png", AssetType.IMAGE);
		
		className.set ("ui/grey_button08.png", __ASSET__ui_grey_button08_png);
		type.set ("ui/grey_button08.png", AssetType.IMAGE);
		
		className.set ("ui/blue_button01.png", __ASSET__ui_blue_button01_png);
		type.set ("ui/blue_button01.png", AssetType.IMAGE);
		
		className.set ("ui/yellow_button08.png", __ASSET__ui_yellow_button08_png);
		type.set ("ui/yellow_button08.png", AssetType.IMAGE);
		
		className.set ("ui/blue_button07.png", __ASSET__ui_blue_button07_png);
		type.set ("ui/blue_button07.png", AssetType.IMAGE);
		
		className.set ("ui/grey_button00.png", __ASSET__ui_grey_button00_png);
		type.set ("ui/grey_button00.png", AssetType.IMAGE);
		
		className.set ("ui/yellow_button00.png", __ASSET__ui_yellow_button00_png);
		type.set ("ui/yellow_button00.png", AssetType.IMAGE);
		
		className.set ("ui/red_button01.png", __ASSET__ui_red_button01_png);
		type.set ("ui/red_button01.png", AssetType.IMAGE);
		
		className.set ("ui/grey_button01.png", __ASSET__ui_grey_button01_png);
		type.set ("ui/grey_button01.png", AssetType.IMAGE);
		
		className.set ("ui/yellow_button01.png", __ASSET__ui_yellow_button01_png);
		type.set ("ui/yellow_button01.png", AssetType.IMAGE);
		
		className.set ("ui/green_button07.png", __ASSET__ui_green_button07_png);
		type.set ("ui/green_button07.png", AssetType.IMAGE);
		
		className.set ("sounds/clic.ogg", __ASSET__sounds_clic_ogg);
		type.set ("sounds/clic.ogg", AssetType.SOUND);
		
		className.set ("fonts/kenvector_future_thin.woff", __ASSET__fonts_kenvector_future_thin_woff);
		type.set ("fonts/kenvector_future_thin.woff", AssetType.BINARY);
		
		className.set ("fonts/kenvector_future.svg", __ASSET__fonts_kenvector_future_svg);
		type.set ("fonts/kenvector_future.svg", AssetType.TEXT);
		
		className.set ("fonts/kenvector_future_thin.eot", __ASSET__fonts_kenvector_future_thin_eot);
		type.set ("fonts/kenvector_future_thin.eot", AssetType.BINARY);
		
		className.set ("fonts/kenvector_future.woff", __ASSET__fonts_kenvector_future_woff);
		type.set ("fonts/kenvector_future.woff", AssetType.BINARY);
		
		className.set ("fonts/kenvector_future.eot", __ASSET__fonts_kenvector_future_eot);
		type.set ("fonts/kenvector_future.eot", AssetType.BINARY);
		
		className.set ("fonts/kenvector_future_thin.ttf", __ASSET__fonts_kenvector_future_thin_ttf);
		type.set ("fonts/kenvector_future_thin.ttf", AssetType.FONT);
		
		className.set ("fonts/kenvector_future.ttf", __ASSET__fonts_kenvector_future_ttf);
		type.set ("fonts/kenvector_future.ttf", AssetType.FONT);
		
		className.set ("fonts/kenvector_future_thin.svg", __ASSET__fonts_kenvector_future_thin_svg);
		type.set ("fonts/kenvector_future_thin.svg", AssetType.TEXT);
		
		className.set ("assets/scenes/a.json", __ASSET__assets_scenes_a_json);
		type.set ("assets/scenes/a.json", AssetType.TEXT);
		
		className.set ("assets/bitmaps/shipBlue_manned.png", __ASSET__assets_bitmaps_shipblue_manned_png);
		type.set ("assets/bitmaps/shipBlue_manned.png", AssetType.IMAGE);
		
		className.set ("assets/sounds/music/Pixelland.ogg", __ASSET__assets_sounds_music_pixelland_ogg);
		type.set ("assets/sounds/music/Pixelland.ogg", AssetType.MUSIC);
		
		className.set ("config/config.json", __ASSET__config_config_json);
		type.set ("config/config.json", AssetType.TEXT);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofString (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__ui_cursorhand_grey_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_blue_button08_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_yellow_button07_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_red_button00_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_larger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_home_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_audioon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_smaller_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_audiooff_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_gamepad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_return_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_musicon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_musicoff_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_icons_gear_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_red_button07_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_red_button08_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_green_button08_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_blue_button00_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_grey_button07_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_green_button01_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_green_button00_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_grey_button08_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_blue_button01_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_yellow_button08_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_blue_button07_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_grey_button00_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_yellow_button00_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_red_button01_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_grey_button01_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_yellow_button01_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__ui_green_button07_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__sounds_clic_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_thin_woff extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_svg extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_thin_eot extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_woff extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_eot extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_thin_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__fonts_kenvector_future_thin_svg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_scenes_a_json extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_bitmaps_shipblue_manned_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_music_pixelland_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__config_config_json extends null { }


#elseif html5






































@:keep #if display private #end class __ASSET__fonts_kenvector_future_thin_ttf extends lime.text.Font { public function new () { super (); name = "KenVector Future Thin Regular"; } } 
@:keep #if display private #end class __ASSET__fonts_kenvector_future_ttf extends lime.text.Font { public function new () { super (); name = "KenVector Future Regular"; } } 







#else



#if (windows || mac || linux || cpp)


@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/cursorHand_grey.png") #if display private #end class __ASSET__ui_cursorhand_grey_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/blue_button08.png") #if display private #end class __ASSET__ui_blue_button08_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/yellow_button07.png") #if display private #end class __ASSET__ui_yellow_button07_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/red_button00.png") #if display private #end class __ASSET__ui_red_button00_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/larger.png") #if display private #end class __ASSET__ui_icons_larger_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/home.png") #if display private #end class __ASSET__ui_icons_home_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/audioOn.png") #if display private #end class __ASSET__ui_icons_audioon_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/smaller.png") #if display private #end class __ASSET__ui_icons_smaller_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/audioOff.png") #if display private #end class __ASSET__ui_icons_audiooff_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/gamepad.png") #if display private #end class __ASSET__ui_icons_gamepad_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/return.png") #if display private #end class __ASSET__ui_icons_return_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/musicOn.png") #if display private #end class __ASSET__ui_icons_musicon_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/musicOff.png") #if display private #end class __ASSET__ui_icons_musicoff_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/icons/gear.png") #if display private #end class __ASSET__ui_icons_gear_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/red_button07.png") #if display private #end class __ASSET__ui_red_button07_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/red_button08.png") #if display private #end class __ASSET__ui_red_button08_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/green_button08.png") #if display private #end class __ASSET__ui_green_button08_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/blue_button00.png") #if display private #end class __ASSET__ui_blue_button00_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/grey_button07.png") #if display private #end class __ASSET__ui_grey_button07_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/green_button01.png") #if display private #end class __ASSET__ui_green_button01_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/green_button00.png") #if display private #end class __ASSET__ui_green_button00_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/grey_button08.png") #if display private #end class __ASSET__ui_grey_button08_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/blue_button01.png") #if display private #end class __ASSET__ui_blue_button01_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/yellow_button08.png") #if display private #end class __ASSET__ui_yellow_button08_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/blue_button07.png") #if display private #end class __ASSET__ui_blue_button07_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/grey_button00.png") #if display private #end class __ASSET__ui_grey_button00_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/yellow_button00.png") #if display private #end class __ASSET__ui_yellow_button00_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/red_button01.png") #if display private #end class __ASSET__ui_red_button01_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/grey_button01.png") #if display private #end class __ASSET__ui_grey_button01_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/yellow_button01.png") #if display private #end class __ASSET__ui_yellow_button01_png extends lime.graphics.Image {}
@:image("/home/thomas/workspace/haxelib-dev/radgames/assets/ui/green_button07.png") #if display private #end class __ASSET__ui_green_button07_png extends lime.graphics.Image {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/sounds/clic.ogg") #if display private #end class __ASSET__sounds_clic_ogg extends lime.utils.Bytes {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future_thin.woff") #if display private #end class __ASSET__fonts_kenvector_future_thin_woff extends lime.utils.Bytes {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future.svg") #if display private #end class __ASSET__fonts_kenvector_future_svg extends lime.utils.Bytes {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future_thin.eot") #if display private #end class __ASSET__fonts_kenvector_future_thin_eot extends lime.utils.Bytes {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future.woff") #if display private #end class __ASSET__fonts_kenvector_future_woff extends lime.utils.Bytes {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future.eot") #if display private #end class __ASSET__fonts_kenvector_future_eot extends lime.utils.Bytes {}
@:font("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future_thin.ttf") #if display private #end class __ASSET__fonts_kenvector_future_thin_ttf extends lime.text.Font {}
@:font("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future.ttf") #if display private #end class __ASSET__fonts_kenvector_future_ttf extends lime.text.Font {}
@:file("/home/thomas/workspace/haxelib-dev/radgames/assets/fonts/kenvector_future_thin.svg") #if display private #end class __ASSET__fonts_kenvector_future_thin_svg extends lime.utils.Bytes {}
@:file("assets/scenes/a.json") #if display private #end class __ASSET__assets_scenes_a_json extends lime.utils.Bytes {}
@:image("assets/bitmaps/shipBlue_manned.png") #if display private #end class __ASSET__assets_bitmaps_shipblue_manned_png extends lime.graphics.Image {}
@:file("assets/sounds/music/Pixelland.ogg") #if display private #end class __ASSET__assets_sounds_music_pixelland_ogg extends lime.utils.Bytes {}
@:file("config/config.json") #if display private #end class __ASSET__config_config_json extends lime.utils.Bytes {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__fonts_kenvector_future_thin_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__fonts_kenvector_future_thin_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__fonts_kenvector_future_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__fonts_kenvector_future_ttf (); src = font.src; name = font.name; super (); }}

#end

#end