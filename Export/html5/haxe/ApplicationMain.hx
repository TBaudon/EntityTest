#if !macro


@:access(lime.app.Application)
@:access(lime.Assets)
@:access(openfl.display.Stage)


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	
	public static function create ():Void {
		
		var app = new openfl.display.Application ();
		app.create (config);
		
		var display = new NMEPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		app.setPreloader (preloader);
		preloader.onComplete.add (init);
		preloader.create (config);
		
		#if (js && html5)
		var urls = [];
		var types = [];
		
		
		urls.push ("ui/cursorHand_grey.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/blue_button08.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/yellow_button07.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/red_button00.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/larger.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/home.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/audioOn.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/smaller.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/audioOff.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/gamepad.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/return.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/musicOn.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/musicOff.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/icons/gear.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/red_button07.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/red_button08.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/green_button08.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/blue_button00.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/grey_button07.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/green_button01.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/green_button00.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/grey_button08.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/blue_button01.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/yellow_button08.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/blue_button07.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/grey_button00.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/yellow_button00.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/red_button01.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/grey_button01.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/yellow_button01.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("ui/green_button07.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("sounds/clic.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("fonts/kenvector_future_thin.woff");
		types.push (lime.Assets.AssetType.BINARY);
		
		
		urls.push ("fonts/kenvector_future.svg");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("fonts/kenvector_future_thin.eot");
		types.push (lime.Assets.AssetType.BINARY);
		
		
		urls.push ("fonts/kenvector_future.woff");
		types.push (lime.Assets.AssetType.BINARY);
		
		
		urls.push ("fonts/kenvector_future.eot");
		types.push (lime.Assets.AssetType.BINARY);
		
		
		urls.push ("KenVector Future Thin Regular");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("KenVector Future Regular");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("fonts/kenvector_future_thin.svg");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/scenes/a.json");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/bitmaps/shipBlue_manned.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/sounds/music/Pixelland.ogg");
		types.push (lime.Assets.AssetType.MUSIC);
		
		
		urls.push ("config/config.json");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		
		if (config.assetsPrefix != null) {
			
			for (i in 0...urls.length) {
				
				if (types[i] != lime.Assets.AssetType.FONT) {
					
					urls[i] = config.assetsPrefix + urls[i];
					
				}
				
			}
			
		}
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if (sys && !nodejs && !emscripten)
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (__) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		
		if (total == 0) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			build: "5",
			company: "Company Name",
			file: "EntityTest",
			fps: 60,
			name: "EntityTest",
			orientation: "",
			packageName: "com.sample.entitytest",
			version: "1.0.0",
			windows: [
				
				{
					antialiasing: 0,
					background: 6436477,
					borderless: false,
					depthBuffer: false,
					display: 0,
					fullscreen: false,
					hardware: true,
					height: 0,
					parameters: "{}",
					resizable: true,
					stencilBuffer: true,
					title: "EntityTest",
					vsync: false,
					width: 0,
					x: null,
					y: null
				},
			]
			
		};
		
		#if hxtelemetry
		var telemetry = new hxtelemetry.HxTelemetry.Config ();
		telemetry.allocations = true;
		telemetry.host = "localhost";
		telemetry.app_name = config.name;
		Reflect.setField (config, "telemetry", telemetry);
		#end
		
		#if (js && html5)
		#if (munit || utest)
		openfl.Lib.embed (null, 0, 0, "62367D");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		var hasMain = false;
		var entryPoint = Type.resolveClass ("fr.radstar.Game");
		
		for (methodName in Type.getClassFields (entryPoint)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		lime.Assets.initialize ();
		
		if (hasMain) {
			
			Reflect.callMethod (entryPoint, Reflect.field (entryPoint, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			/*if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}*/
			
		}
		
		#if !flash
		if (openfl.Lib.current.stage.window.fullscreen) {
			
			openfl.Lib.current.stage.dispatchEvent (new openfl.events.FullScreenEvent (openfl.events.FullScreenEvent.FULL_SCREEN, false, false, true, true));
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		#end
		
	}
	
	
	#if neko
	@:noCompletion @:dox(hide) public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


@:build(DocumentClass.build())
@:keep class DocumentClass extends fr.radstar.Game {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					openfl.Lib.current.addChild (this);
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
