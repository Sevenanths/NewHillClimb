.class public Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;
.super Ljava/lang/Object;
.source "NativeTrackingStrategy.java"

# interfaces
.implements Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public track(Ljava/lang/String;)V
    .locals 6
    .parameter "trackingData"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 18
    :try_start_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, parameters:[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v2, trackingParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "stage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    const-string v3, "level_complete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = level_complete, Stage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 25
    const-string v3, "event"

    const-string v4, "level_complete"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v3, "stage"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "level"

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_0
    const-string v3, "stage"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    .end local v1           #parameters:[Ljava/lang/String;
    .end local v2           #trackingParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 31
    .restart local v1       #parameters:[Ljava/lang/String;
    .restart local v2       #trackingParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = stage_start, Stage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vehicle= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 32
    const-string v3, "event"

    const-string v4, "stage_start"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "stage"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "vehicle"

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v1           #parameters:[Ljava/lang/String;
    .end local v2           #trackingParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Error tracking data."

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #parameters:[Ljava/lang/String;
    .restart local v2       #trackingParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v3, "upgrade"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = upgrade_purchased, name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 41
    const-string v3, "name"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, "level"

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "upgrade_purchased"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 45
    :cond_2
    const-string v3, "more"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    array-length v3, v1

    if-le v3, v4, :cond_3

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = more, name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 50
    const-string v3, "event"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    const-string v3, "more"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 54
    :cond_4
    const-string v3, "adreceived"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 56
    array-length v3, v1

    if-le v3, v4, :cond_5

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = ad_received, provider = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 59
    const-string v3, "provider"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_5
    const-string v3, "ad_received"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 63
    :cond_6
    const-string v3, "appStartup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 65
    array-length v3, v1

    if-le v3, v4, :cond_7

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = appStartup, version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", release = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 68
    const-string v3, "version"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "release"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_7
    const-string v3, "app_startup"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 73
    :cond_8
    const-string v3, "provider_priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 75
    array-length v3, v1

    if-le v3, v4, :cond_9

    .line 77
    const-string v3, "Tracking: Event = provider_priority"

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 78
    const-string v3, "event"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_9
    const-string v3, "provider_priority"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 82
    :cond_a
    const-string v3, "iap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 84
    array-length v3, v1

    if-lt v3, v5, :cond_b

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracking: Event = iap, event = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", release = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 87
    const-string v3, "event"

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_b
    const-string v3, "iap"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 93
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Strategy is Tracking: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
