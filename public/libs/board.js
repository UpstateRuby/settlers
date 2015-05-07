require(['lodash', 'pixi', 'hexPixi'], function(_, pixi, hexPixi){
    'use strict';

    var map = null,
        stage = new pixi.Stage(0xe0e0e0),
        renderer = new pixi.autoDetectRenderer(800, 600, {
            antialiasing: true,
            transparent: false,
            resolution: 1
        });

    function setupPixiJs() {
        // add the renderer view element to the DOM
        var div = document.getElementById('stage');
        div.appendChild(renderer.view);

        //requestAnimFrame(animate);
        map = new hexPixi.Map(stage, {
            mapWidth: 10,
            mapHeight: 8,
            coordinateSystem: 2,
            hexLineWidth: 2,
            hexSize: 40,
            showCoordinates: true,
            textures: ["images/game/texture/grassTexture.jpg", "images/game/texture/waterTexture.jpg"],
            terrainTypes: [
                { name: "brick", textureIndex: 0, color: 0x9B5523 },
                { name: "desert", textureIndex: 1, color: 0xdBd588 },
                { name: "ore", textureIndex: 2, color: 0xebebfa },
                { name: "sheep", textureIndex: 3, color: 0x4060fa },
                { name: "wheat", textureIndex: 4, color: 0x10fa10 },
                { name: "wood", textureIndex: 5, color: 0x10fa10 }
            ],
            onAssetsLoaded: function () {
                console.log('done');
            }
        });
    }

    function initPage() {
        setupPixiJs();

        map.generateRandomMap();
    }

    initPage();
});