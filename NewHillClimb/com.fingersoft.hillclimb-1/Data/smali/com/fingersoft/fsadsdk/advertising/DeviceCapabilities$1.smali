.class Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;
.super Ljava/util/HashMap;
.source "DeviceCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const-string v0, "cpu"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "drdver"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "res"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "device"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "device_type"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
