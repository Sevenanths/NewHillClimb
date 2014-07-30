.class public Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# static fields
.field public static logEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->logEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canFit(Landroid/app/Activity;I)Z
    .locals 4
    .parameter "activity"
    .parameter "adWidth"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 20
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_1

    const/16 v2, 0x1e0

    if-ne p1, v2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getBannerSize(Landroid/app/Activity;I)Lcom/fingersoft/fsadsdk/advertising/BannerSize;
    .locals 10
    .parameter "activity"
    .parameter "adWidth"

    .prologue
    const/16 v9, 0x5a

    const/16 v8, 0xf

    const/16 v7, 0xb

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, adSizes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/BannerSize;>;"
    const-string v3, "480"

    new-instance v4, Lcom/fingersoft/fsadsdk/advertising/BannerSize;

    const/16 v5, 0x140

    const/16 v6, 0x32

    invoke-direct {v4, v5, v6, v8}, Lcom/fingersoft/fsadsdk/advertising/BannerSize;-><init>(III)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v3, "680"

    new-instance v4, Lcom/fingersoft/fsadsdk/advertising/BannerSize;

    const/16 v5, 0x1e0

    const/16 v6, 0x3c

    invoke-direct {v4, v5, v6, v8}, Lcom/fingersoft/fsadsdk/advertising/BannerSize;-><init>(III)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "1000"

    new-instance v4, Lcom/fingersoft/fsadsdk/advertising/BannerSize;

    const/16 v5, 0x2d8

    invoke-direct {v4, v5, v9, v7}, Lcom/fingersoft/fsadsdk/advertising/BannerSize;-><init>(III)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "10000"

    new-instance v4, Lcom/fingersoft/fsadsdk/advertising/BannerSize;

    const/16 v5, 0x300

    invoke-direct {v4, v5, v9, v7}, Lcom/fingersoft/fsadsdk/advertising/BannerSize;-><init>(III)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 38
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning thid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "480"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 49
    const-string v3, "480"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fingersoft/fsadsdk/advertising/BannerSize;

    :goto_0
    return-object v3

    .line 38
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 41
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fingersoft/fsadsdk/advertising/BannerSize;

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 54
    sget-boolean v0, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->logEnabled:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "fsad-sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
