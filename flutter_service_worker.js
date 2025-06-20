'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "3fc29f9294b755bca0378065b89e216e",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"favicon.png": "97de0cd42a5af07914e63f02f2a71e37",
"main.dart.js": "6676e8c44b4cd90b1564fcc9723103bb",
"icons/Icon-192.png": "6eb9e240212be9e80f745d16770f6e76",
"version.json": "11e1a177d57c5da2bc6e3a6acc3010f4",
"index.html": "2c58e1081a755076980f641166f6b39b",
"/": "2c58e1081a755076980f641166f6b39b",
"assets/AssetManifest.bin": "be99ebc6a8d4ad0583db4efd920dd7d0",
"assets/NOTICES": "800d25f004ea602d72c48d4a454d64e4",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "c4d3661524289fb93821020f7c86f489",
"assets/assets/data/apps.json": "f4678738015c8de55742fbc6f967ba87",
"assets/assets/images/image.jpg": "d1c189f6ea3906b28a178c889a6820e2",
"assets/assets/images/screen1.jpeg": "1471e46b37c9a6587c359f3c1531771e",
"assets/assets/images/screen4.jpeg": "b07e6b71765e7b1b0885dfd74de09d5d",
"assets/assets/images/transparent.png": "ebdeac6cb5c5e658f02a51d475177ee4",
"assets/assets/images/screen3.jpeg": "05edb835d5bacd1b1914ba951ac64181",
"assets/assets/images/screen2.jpeg": "d1160c1a163032d11b72c2e6eb271aab",
"assets/assets/images/iphone_frame.png": "e4540c21a0e97d94e1072255d95a0852",
"assets/assets/projects/grow_sf/screen1.jpeg": "1471e46b37c9a6587c359f3c1531771e",
"assets/assets/projects/grow_sf/screen4.jpeg": "b07e6b71765e7b1b0885dfd74de09d5d",
"assets/assets/projects/grow_sf/screen3.jpeg": "05edb835d5bacd1b1914ba951ac64181",
"assets/assets/projects/grow_sf/screen2.jpeg": "d1160c1a163032d11b72c2e6eb271aab",
"assets/assets/projects/checklist/checklist_2.png": "5289fb5c48baba879e31a5721ad0efed",
"assets/assets/projects/checklist/checklist_4.png": "7b480065d242c480166bdf021ca1bad9",
"assets/assets/projects/checklist/checklist_1.png": "483073fe46bbf425cc2f97d30e58ca6e",
"assets/assets/projects/checklist/checklist_3.png": "1c5f24addfc20a5790c4a3ba789449a8",
"assets/assets/fonts/Ubuntu/Ubuntu-Regular.ttf": "84ea7c5c9d2fa40c070ccb901046117d",
"assets/assets/fonts/Ubuntu/Ubuntu-Light.ttf": "c9d68f61bf89fde6a24da697bc45d6f9",
"assets/assets/fonts/Ubuntu/Ubuntu-Bold.ttf": "896a60219f6157eab096825a0c9348a8",
"assets/assets/fonts/Ubuntu/Ubuntu-Medium.ttf": "d3c3b35e6d478ed149f02fad880dd359",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-BookSemiExt.ttf": "6980dcbc44d69c96a68e26b59495ec3d",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-BoldSemiExt.ttf": "625668d5f0c0344082c5abb2b12e0cfb",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-Semibold.ttf": "f9cfece2f827e099fc7929f405bb5828",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-Light.ttf": "25ddc7f44bf0e0a19600809f40913a2b",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-SemiboldExt.ttf": "590d85566f3a1449af42e3654a60ca39",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-XBold.ttf": "e8ab9a7b8102a45f80008508fe2311d2",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-Book.ttf": "951d2c723d1240c79f231513839b53d8",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-Bold.ttf": "ce81b6b10d3d77cab5fce5f4ab530fea",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-BoldExt.ttf": "7335394034e17a82ac5f7d992b867d1d",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-LightExt.ttf": "2416625e230c3c57a92fcd49912446b9",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-XBoldExt.ttf": "35460f9795c605f632a407bead682bd1",
"assets/assets/fonts/ocean_sans_std/OceanSansStd-BookExt.ttf": "830b9f350de557495e22d1ed9e208ed6",
"assets/assets/fonts/cirka/Cirka-Variable.ttf": "2647fc7d42fb0cffe65f61dc82847883",
"assets/assets/fonts/cirka/Cirka-Light.otf": "5366c40a580451a20a2b2936094c349d",
"assets/assets/fonts/cirka/Cirka-Bold.otf": "5965c9b7b03118a059c084e4f3db89ae",
"assets/FontManifest.json": "0429f8eb3f4ab0fb69ce4c4f98f9abe5",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/AssetManifest.json": "6c8c261d105bae9a920fd4876e7fd6ec",
"flutter_bootstrap.js": "10a002e406a6754cc27025cd13ca6332",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
