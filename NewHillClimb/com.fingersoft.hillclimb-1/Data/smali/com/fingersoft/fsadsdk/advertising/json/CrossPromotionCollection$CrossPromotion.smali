.class public Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
.super Ljava/lang/Object;
.source "CrossPromotionCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrossPromotion"
.end annotation


# instance fields
.field private clickUrl:Ljava/lang/String;

.field private cpuArchitecture:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private dialogTitle:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private imageData:Ljava/lang/String;

.field private ramAmount:I

.field private resolutionHeight:I

.field private resolutionWidth:I

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

.field private title:Ljava/lang/String;

.field private unitySupport:Z

.field private versionNumber:I


# direct methods
.method protected constructor <init>(Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter "json"

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->this$0:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->title:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->description:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->clickUrl:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->image:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->guid:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->identifier:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->dialogTitle:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->cpuArchitecture:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->imageData:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->versionNumber:I

    .line 70
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->resolutionWidth:I

    .line 71
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->resolutionHeight:I

    .line 72
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->ramAmount:I

    .line 74
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->unitySupport:Z

    .line 78
    invoke-direct {p0, p2}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->parseJson(Lorg/json/JSONObject;)V

    .line 79
    return-void
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"

    .prologue
    .line 85
    :try_start_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->title:Ljava/lang/String;

    .line 86
    const-string v1, "dialog_title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->dialogTitle:Ljava/lang/String;

    .line 87
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->description:Ljava/lang/String;

    .line 88
    const-string v1, "click_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->clickUrl:Ljava/lang/String;

    .line 89
    const-string v1, "promotion_image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->image:Ljava/lang/String;

    .line 90
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->guid:Ljava/lang/String;

    .line 91
    const-string v1, "identifier"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->identifier:Ljava/lang/String;

    .line 92
    const-string v1, "image_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->imageData:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "fsad-sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->cpuArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->dialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->imageData:Ljava/lang/String;

    return-object v0
.end method

.method public getRamAmount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->ramAmount:I

    return v0
.end method

.method public getResolutionHeight()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->resolutionHeight:I

    return v0
.end method

.method public getResolutionWidth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->resolutionWidth:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitySupport()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->unitySupport:Z

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->versionNumber:I

    return v0
.end method

.method public matchesCapabilities()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->unitySupport:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->isUnitySupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
