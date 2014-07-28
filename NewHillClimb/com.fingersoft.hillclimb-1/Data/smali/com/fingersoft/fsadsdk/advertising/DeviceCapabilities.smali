.class public Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;
.super Ljava/lang/Object;
.source "DeviceCapabilities.java"


# static fields
.field public static final ANDROID_VERSION:Ljava/lang/String; = "drdver"

.field public static final CPU_ARCHITECTURE:Ljava/lang/String; = "cpu"

.field public static final DEVICE_MODEL:Ljava/lang/String; = "device"

.field public static final DEVICE_RESOLUTION:Ljava/lang/String; = "res"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field static mCapabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;

    invoke-direct {v0}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;-><init>()V

    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectCapabilities(Landroid/app/Activity;)V
    .locals 12
    .parameter "activity"

    .prologue
    .line 64
    sget-object v7, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 72
    :try_start_0
    const-string v7, "os.arch"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, cpu:Ljava/lang/String;
    sget-object v7, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    const-string v8, "cpu"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v7, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    const-string v8, "drdver"

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v7, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    const-string v8, "device"

    invoke-static {}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, "_"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v4, 0x0

    .line 79
    .local v4, screenWidth:I
    const/4 v3, 0x0

    .line 80
    .local v3, screenHeight:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 81
    .local v5, size:Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 83
    .local v6, w:Landroid/view/WindowManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-lt v7, v8, :cond_0

    .line 85
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 86
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 87
    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 95
    :goto_0
    sget-object v7, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    const-string v8, "res"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v7, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    const-string v8, "device_type"

    invoke-static {p0}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v0           #cpu:Ljava/lang/String;
    .end local v3           #screenHeight:I
    .end local v4           #screenWidth:I
    .end local v5           #size:Landroid/graphics/Point;
    .end local v6           #w:Landroid/view/WindowManager;
    :goto_1
    return-void

    .line 91
    .restart local v0       #cpu:Ljava/lang/String;
    .restart local v3       #screenHeight:I
    .restart local v4       #screenWidth:I
    .restart local v5       #size:Landroid/graphics/Point;
    .restart local v6       #w:Landroid/view/WindowManager;
    :cond_0
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 92
    .local v1, d:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 93
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 98
    .end local v0           #cpu:Ljava/lang/String;
    .end local v1           #d:Landroid/view/Display;
    .end local v3           #screenHeight:I
    .end local v4           #screenWidth:I
    .end local v5           #size:Landroid/graphics/Point;
    .end local v6           #w:Landroid/view/WindowManager;
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Problem determining device capabilities"

    invoke-static {v7}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDeviceCapabilitiesAsRequestParams()Ljava/lang/String;
    .locals 8

    .prologue
    .line 41
    const-string v3, ""

    .line 43
    .local v3, params:Ljava/lang/String;
    const/4 v1, 0x0

    .line 45
    .local v1, firstItemAdded:Z
    sget-object v5, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    return-object v3

    .line 45
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    .local v4, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getDeviceModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, manufacturer:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, model:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    .end local v1           #model:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #model:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "tablet"

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    goto :goto_0
.end method

.method public static isUnitySupported()Z
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->mCapabilities:Ljava/util/Map;

    const-string v1, "cpu"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "armv7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
