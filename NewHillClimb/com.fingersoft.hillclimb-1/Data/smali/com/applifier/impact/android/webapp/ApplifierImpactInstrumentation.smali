.class public Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;
.super Ljava/lang/Object;
.source "ApplifierImpactInstrumentation.java"


# static fields
.field private static _unsentEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gaInstrumentationVideoAbort(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V
    .locals 2
    .parameter "campaignPlaying"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->getBasicGAVideoProperties(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    .local v0, data:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->handleUnsentEvents()V

    .line 193
    const-string v1, "videoAnalyticsEventAbort"

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 194
    return-void
.end method

.method public static gaInstrumentationVideoCaching(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V
    .locals 2
    .parameter "campaignPlaying"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->getBasicGAVideoProperties(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    .local v0, data:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->handleUnsentEvents()V

    .line 200
    const-string v1, "videoAnalyticsEventCaching"

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 201
    return-void
.end method

.method public static gaInstrumentationVideoError(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V
    .locals 2
    .parameter "campaignPlaying"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->getBasicGAVideoProperties(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    .local v0, data:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->handleUnsentEvents()V

    .line 186
    const-string v1, "videoAnalyticsEventError"

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 187
    return-void
.end method

.method public static gaInstrumentationVideoPlay(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V
    .locals 2
    .parameter "campaignPlaying"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->getBasicGAVideoProperties(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    .local v0, data:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->handleUnsentEvents()V

    .line 179
    const-string v1, "videoAnalyticsEventPlay"

    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 180
    return-void
.end method

.method private static getBasicGAVideoProperties(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Lorg/json/JSONObject;
    .locals 7
    .parameter "campaignPlaying"

    .prologue
    const/4 v4, 0x0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    const-string v3, "stream"

    .line 77
    .local v3, videoPlayType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    const-string v3, "cached"

    .line 81
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, connectionType:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v2, retJsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "videoPlaybackType"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v5, "connectionType"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v5, "campaignId"

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0           #connectionType:Ljava/lang/String;
    .end local v2           #retJsonObject:Lorg/json/JSONObject;
    .end local v3           #videoPlayType:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 90
    .restart local v0       #connectionType:Ljava/lang/String;
    .restart local v2       #retJsonObject:Lorg/json/JSONObject;
    .restart local v3       #videoPlayType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Could not create instrumentation JSON"

    const-class v6, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    move-object v2, v4

    .line 92
    goto :goto_0

    .end local v0           #connectionType:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #retJsonObject:Lorg/json/JSONObject;
    .end local v3           #videoPlayType:Ljava/lang/String;
    :cond_1
    move-object v2, v4

    .line 98
    goto :goto_0
.end method

.method private static handleUnsentEvents()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->sendGAInstrumentationEvents()V

    .line 103
    return-void
.end method

.method private static mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, mapWithValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 24
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v4, retJsonObject:Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 27
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 28
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #retJsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 29
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #retJsonObject:Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, key:Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 33
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not add value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 44
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #retJsonObject:Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .parameter "json1"
    .parameter "json2"

    .prologue
    .line 48
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    .local v2, keyIterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    .end local v2           #keyIterator:Ljava/util/Iterator;
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 53
    .restart local v2       #keyIterator:Ljava/util/Iterator;
    .restart local p0
    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Problems creating JSON"

    const-class v5, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v4, v5}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #keyIterator:Ljava/util/Iterator;
    :cond_2
    if-nez p0, :cond_0

    .line 67
    if-eqz p1, :cond_3

    move-object p0, p1

    .line 68
    goto :goto_1

    .line 70
    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "eventType"
    .parameter "data"

    .prologue
    .line 144
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v2, finalData:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v4, wrapArray:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v1, events:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "eventType"

    invoke-virtual {v2, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v5, "data"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    const-string v5, "events"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    sget-object v5, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v5, v5, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v5, v5, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v5}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    const-string v5, "Sending to webapp!"

    const-class v6, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 160
    sget-object v5, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v5, v5, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v6, "googleAnalyticsEvent"

    invoke-virtual {v5, v6, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 173
    :goto_1
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Couldn\'t create final data"

    const-class v6, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "WebApp not initialized, could not send event!"

    const-class v6, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 165
    sget-object v5, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    .line 169
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v3, tmpData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v5, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static sendGAInstrumentationEvents()V
    .locals 9

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, finalData:Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 108
    .local v6, wrapArray:Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v4, finalEvents:Lorg/json/JSONObject;
    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 111
    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 133
    sget-object v7, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v7, v7, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v7, v7, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v7}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const-string v7, "Sending to webapp!"

    const-class v8, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;

    invoke-static {v7, v8}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 135
    sget-object v7, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v7, v7, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v8, "googleAnalyticsEvent"

    invoke-virtual {v7, v8, v4}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 136
    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 137
    const/4 v7, 0x0

    sput-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    .line 140
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 112
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #finalData:Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .restart local v3       #finalData:Lorg/json/JSONObject;
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, eventType:Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 117
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "eventType"

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v8, "data"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    :try_start_1
    const-string v8, "events"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v8

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method
