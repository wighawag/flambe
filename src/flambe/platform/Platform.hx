//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

package flambe.platform;

import flambe.asset.AssetPack;
import flambe.asset.Manifest;
import flambe.display.Stage;
import flambe.display.Texture;
import flambe.Entity;
import flambe.input.Keyboard;
import flambe.input.Mouse;
import flambe.input.Pointer;
import flambe.input.Touch;
import flambe.storage.Storage;
import flambe.util.Logger;
import flambe.util.Promise;
import flambe.web.Web;

interface Platform
{
    function init () :Void;

    function getKeyboard () :Keyboard;
    function getMouse () :Mouse;
    function getPointer () :Pointer;
    function getStage () :Stage;
    function getStorage () :Storage;
    function getTouch () :Touch;
    function getWeb () :Web;

    function getRenderer () :Renderer;

    function callNative (funcName :String, params :Array<Dynamic>) :Dynamic;
    function createLogHandler (tag :String) :LogHandler;
    function loadAssetPack (manifest :Manifest) :Promise<AssetPack>;

    function getLocale () :String;
    function getTime () :Float;
}
