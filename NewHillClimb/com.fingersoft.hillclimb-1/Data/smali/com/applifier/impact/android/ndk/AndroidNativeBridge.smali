.class public Lcom/applifier/impact/android/ndk/AndroidNativeBridge;
.super Ljava/lang/Object;
.source "AndroidNativeBridge.java"

# interfaces
.implements Lcom/applifier/impact/android/IApplifierImpactListener;


# static fields
.field private static EVENT_IMPACT_CAMPAIGNS_AVAILABLE:I

.field private static EVENT_IMPACT_CAMPAIGNS_FAILED:I

.field private static EVENT_IMPACT_CLOSE:I

.field private static EVENT_IMPACT_OPEN:I

.field private static EVENT_IMPACT_VIDEO_COMPLETE:I

.field private static EVENT_IMPACT_VIDEO_SKIPPED:I

.field private static EVENT_IMPACT_VIDEO_START:I

.field private static final self:Lcom/applifier/impact/android/ndk/AndroidNativeBridge;


# instance fields
.field private bridgeInitBroadcast:Z

.field private impact:Lcom/applifier/impact/android/ApplifierImpact;

.field private parentActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    invoke-direct {v0}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;-><init>()V

    sput-object v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->self:Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_CLOSE:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_OPEN:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_START:I

    .line 32
    const/4 v0, 0x4

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_COMPLETE:I

    .line 33
    const/4 v0, 0x5

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_AVAILABLE:I

    .line 34
    const/4 v0, 0x6

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_FAILED:I

    .line 35
    const/4 v0, 0x7

    sput v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_SKIPPED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->bridgeInitBroadcast:Z

    .line 50
    sget-object v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->self:Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-instantiate AndroidNativeBridge, something is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    return-void
.end method

.method public static __getDefaultReward()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->getInstance()Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0}, Lcom/applifier/impact/android/ApplifierImpact;->getDefaultRewardItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static __getRewardUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 112
    invoke-static {}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->getInstance()Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0, p0}, Lcom/applifier/impact/android/ApplifierImpact;->getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 113
    const-string v1, "picture"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    return-object v0
.end method

.method public static __init(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 43
    sget-object v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->self:Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    invoke-virtual {v0, p0}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->__initImpact(I)V

    .line 44
    return-void
.end method

.method public static __showImpact(ZZ)V
    .locals 3
    .parameter "offerScreen"
    .parameter "animated"

    .prologue
    .line 94
    invoke-static {}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->getInstance()Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    move-result-object v1

    iget-object v1, v1, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Impact has not yet been initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "noOfferScreen"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "openAnimated"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->getInstance()Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    move-result-object v1

    iget-object v1, v1, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v1, v0}, Lcom/applifier/impact/android/ApplifierImpact;->showImpact(Ljava/util/Map;)Z

    .line 101
    return-void
.end method

.method public static getInstance()Lcom/applifier/impact/android/ndk/AndroidNativeBridge;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->self:Lcom/applifier/impact/android/ndk/AndroidNativeBridge;

    return-object v0
.end method


# virtual methods
.method public __initImpact(I)V
    .locals 4
    .parameter "appId"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impact has already been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setRootActivity(Activity) in your Java code prior to initializing impact."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact;->setDebugMode(Z)V

    .line 126
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact;

    iget-object v1, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/applifier/impact/android/ApplifierImpact;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    iput-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    .line 127
    const-string v0, "applifier"

    const-string v1, "new ApplifierImpact done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public native bridgeReady()V
.end method

.method public native dispatchEvent(ILjava/lang/String;)V
.end method

.method public onCampaignsAvailable()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0}, Lcom/applifier/impact/android/ApplifierImpact;->getRewardItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->setRewardItems([Ljava/lang/String;)V

    .line 86
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_AVAILABLE:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public onCampaignsFetchFailed()V
    .locals 2

    .prologue
    .line 90
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_FAILED:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 91
    return-void
.end method

.method public onImpactClose()V
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_CLOSE:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public onImpactOpen()V
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_OPEN:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "skipped"

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_SKIPPED:I

    invoke-virtual {p0, v0, p1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_COMPLETE:I

    invoke-virtual {p0, v0, p1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_START:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public native setRewardItems([Ljava/lang/String;)V
.end method

.method public setRootActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/ApplifierImpact;->changeActivity(Landroid/app/Activity;)V

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->bridgeInitBroadcast:Z

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->bridgeReady()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applifier/impact/android/ndk/AndroidNativeBridge;->bridgeInitBroadcast:Z

    .line 62
    :cond_1
    return-void
.end method
