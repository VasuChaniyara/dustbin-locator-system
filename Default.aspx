<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Map.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="GettingStarted.Default" %>

<asp:Content ContentPlaceHolderID="cphContent" runat="server">
    <link href="Scripts/ol.css" rel="stylesheet" />
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" />
   
    <script src="Content/js/bootstrap.min.js" type="text/javascript"></script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h2 style="text-align: center"><i>
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label></i></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="map" class="full-map"></div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var lonlat = 0;
        var geometries = [];

         <% GettingStarted.GeoHelper helper = new GettingStarted.GeoHelper();

        foreach (var item in helper.GetSpatialData())
        { %>

        geometries.push('<%=item %>');

        <% } %>


        var wktReader = new ol.format.WKT();

        var featureCollection = [];

        for (var i = 0; i < geometries.length; i++) {

            var feature = wktReader.readFeature(geometries[i]);

            feature.getGeometry().transform('EPSG:4326', 'EPSG:3857');

            if (feature.getGeometry().getType() == 'Polygon') {
                feature.setStyle(new ol.style.Style({
                    stroke: new ol.style.Stroke({
                        color: 'blue',
                        width: 3
                    }),
                    fill: new ol.style.Fill({
                        color: 'rgba(0, 0, 255, 0.1)'
                    })
                }));
                featureCollection.push(feature);
            }
            else if (feature.getGeometry().getType() == 'LineString') {
                feature.setStyle(new ol.style.Style({
                    stroke: new ol.style.Stroke({
                        color: 'red',
                        width: 3
                    })
                }));

                featureCollection.push(feature);
            }
            else if (feature.getGeometry().getType() == 'Point') {

                feature.setStyle(new ol.style.Style({
                    image: new ol.style.Icon(/** @type {olx.style.IconOptions} */({
                        anchor: [0.5, 32],
                        anchorXUnits: 'fraction',
                        anchorYUnits: 'pixels',
                        opacity: 0.75,
                        src: 'Icons/32-size-logo.png'
                    }))
                }));

                featureCollection.push(feature);
            }
        }

        // vector source
        var source = new ol.source.Vector({
            features: featureCollection
        });

        // create a layer
        var vectorLayer = new ol.layer.Vector({
            source: source
        });

        // open streat map layer
        var osmLayer = new ol.layer.Tile({
            source: new ol.source.OSM()
        });

        // map object
        var map = new ol.Map({
            layers: [osmLayer, vectorLayer],
            target: 'map',
            view: new ol.View({
                center: [0, 0],
                zoom: 2
            })
        });
        //
        //
        //
        var Rajkot = ol.proj.transform([70.8022, 22.3039], 'EPSG:4326', 'EPSG:3857');

        var view = new ol.View({
            center: Rajkot,
            zoom: 6
        });
        var marker = new ol.Overlay({
            element: document.getElementById('Location'),
            positioning: 'bottom-left',
            stopEvent: false
        });

        // add it to the map
        map.addOverlay(marker);

        // create a Geolocation object setup to track the position of the device
        var geolocation = new ol.Geolocation({
            tracking: true
        });

        // bind the projection to the view so that positions are reported in the
        // projection of the view
        //geolocation.bindTo('projection', view);
        var myObject = new ol.layer.Vector();
        myObject.on('propertychange', function (evt) {
            if (evt.key === 'view') {
                
            }
        });
        myObject.set('view', 'rajkot');

        geolocation.on('change:position', function () {
            var p = geolocation.getPosition();
            console.log(p[0] + ' : ' + p[1]);
            view.setCenter([parseFloat(p[0]), parseFloat(p[1])]);
        });
        // bind the marker's position to the geolocation object, the marker will
        // move automatically when the GeoLocation API provides position updates
        //marker.bindTo('position', geolocation);
        var marker = new ol.layer.Vector();
        marker.on('propertychange', function (evt) {
            if (evt.key === 'position') {
                
            }
        });
        myObject.set('position', 'geolocation');
        // when the GeoLocation API provides a position update, center the view
        // on the new position
        
        //
        //
        //
        map.on('click', function (evt) {
            /*console.info(evt.pixel);
            console.info(map.getPixelFromCoordinate(evt.coordinate));
            console.info(ol.proj.toLonLat(evt.coordinate));
            var coords = ol.proj.toLonLat(evt.coordinate);
            var lat = coords[1];
            var lon = coords[0];*/
            lonlat = ol.proj.toLonLat(evt.coordinate);
            alert("latitude : " + lonlat[1] + ", longitude : " + lonlat[0]);
            console.log(lonlat[0]);

            

            
        // coords is a div in HTML below the map to display
        //document.alert('coords').innerHTML = locTxt.alert;
        //alert(locTxt);
        });
        //var lonLat = new OpenLayers.LonLat(77.1279688, 51.5043436).transform(fromProjection, toProjection);


        self.map.on("singleclick", function (evt) {
            setPinOnMap(evt);
        })
        //siversgibtestco.cf("singleclick", function (evt) { setPinOnMap(evt); })

        
        //setPinOnMap: function(evt) {
            //var self = this; var Point(siversgibtestco.cfnate); var iconFeature = new ol

        //setPinOnMap: function (evt) {
        //    var self = this;

        //    var latLong = ol.proj.transform(evt.coordinate, 'EPSG:3857', 'EPSG:4326');
        //    var lat = latLong[1];
        //    var long = latLong[0];

        //    self.params.options.mapClick({ lat: lat, long: long });

        //    if (self.dinamicPinLayer !== undefined) {
        //        console.log("moove")
        //        self.iconGeometry.setCoordinates(evt.coordinate);
        //        //or create another pin  
        //    } else {
        //        self.iconGeometry = new ol.geom.Point(evt.coordinate);
        //        var iconFeature = new ol.Feature({
        //            geometry: self.iconGeometry,
        //            name: 'Null Island',
        //            population: 4000,
        //            rainfall: 500
        //        });
        //        var iconStyle = new ol.style.Style({
        //            image: new ol.style.Icon(({
        //                anchor: [0.5, 46],
        //                anchorXUnits: 'fraction',
        //                anchorYUnits: 'pixels',
        //                size: [48, 48],
        //                opacity: 1,
        //                src: 'Icons/dustbin.png'
        //            }))
        //        });

        //        iconFeature.setStyle(iconStyle);

        //        var vectorSource = new ol.source.Vector({
        //            features: [iconFeature]
        //        });
        //        self.dinamicPinLayer = new ol.layer.Vector({
        //            source: vectorSource
        //        });
        //        self.map.addLayer(self.dinamicPinLayer);
        //    }


        //}


    </script>
</asp:Content>

