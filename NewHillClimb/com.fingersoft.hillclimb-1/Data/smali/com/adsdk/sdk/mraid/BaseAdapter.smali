.class public abstract Lcom/adsdk/sdk/mraid/BaseAdapter;
.super Ljava/lang/Object;
.source "BaseAdapter.java"


# static fields
.field private static final sAdapterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mInvalidated:Z

.field protected mJsonParams:Ljava/lang/String;

.field protected mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/BaseAdapter;->sAdapterMap:Ljava/util/HashMap;

    .line 51
    sget-object v0, Lcom/adsdk/sdk/mraid/BaseAdapter;->sAdapterMap:Ljava/util/HashMap;

    const-string v1, "admob_native"

    const-string v2, "com.adsdk.sdk.mraid.GoogleAdMobAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/adsdk/sdk/mraid/BaseAdapter;->sAdapterMap:Ljava/util/HashMap;

    const-string v1, "millennial_native"

    const-string v2, "com.adsdk.sdk.mraid.MillennialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/adsdk/sdk/mraid/BaseAdapter;->sAdapterMap:Ljava/util/HashMap;

    const-string v1, "mraid"

    const-string v2, "com.adsdk.sdk.mraid.MraidAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classForAdapterType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {p0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->classStringForAdapterType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find a handler for this ad type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    const-string v5, " MoPub for Android does not support it at this time."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-object v2

    .line 100
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " class."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    const-string v5, " Make sure the project includes the adapter library for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-string v5, " from the extras folder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static classStringForAdapterType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 88
    sget-object v0, Lcom/adsdk/sdk/mraid/BaseAdapter;->sAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getAdapterForType(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseAdapter;
    .locals 8
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 72
    if-nez p0, :cond_0

    move-object v3, v4

    .line 83
    :goto_0
    return-object v3

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->classForAdapterType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 78
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 79
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adsdk/sdk/mraid/BaseAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v3, nativeAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;
    goto :goto_0

    .line 81
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #nativeAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t create native adapter for type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 83
    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "jsonParams"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 58
    iput-object p2, p0, Lcom/adsdk/sdk/mraid/BaseAdapter;->mJsonParams:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/BaseAdapter;->mInvalidated:Z

    .line 60
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/BaseAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/BaseAdapter;->mInvalidated:Z

    .line 65
    return-void
.end method

.method public isInvalidated()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/BaseAdapter;->mInvalidated:Z

    return v0
.end method

.method public abstract loadAd()V
.end method
