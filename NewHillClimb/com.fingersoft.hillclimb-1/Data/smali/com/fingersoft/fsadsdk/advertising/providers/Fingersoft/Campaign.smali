.class public Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"


# instance fields
.field private adDisplayTime:I

.field private adImage:Ljava/lang/String;

.field private adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private adMaxShowTimes:I

.field private campaignDisplayTime:I

.field private campaignMaxShowTimes:I

.field private campaignType:Ljava/lang/String;

.field private clickLink:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private imageData:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 2
    .parameter "jsonObject"
    .parameter "adManager"

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignType:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->clickLink:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adImage:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->guid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->identifier:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignMaxShowTimes:I

    .line 20
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignDisplayTime:I

    .line 21
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adMaxShowTimes:I

    .line 22
    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adDisplayTime:I

    .line 24
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->imageData:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 50
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->parseJson(Lorg/json/JSONObject;)V

    .line 51
    return-void
.end method

.method public static getCampaigns(Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/util/List;
    .locals 7
    .parameter "jsonString"
    .parameter "adManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fingersoft/fsadsdk/advertising/AdManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, campaignList:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v4, json:Lorg/json/JSONObject;
    const-string v5, "campaigns"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    .local v0, campaignJson:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 44
    .end local v0           #campaignJson:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #json:Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 37
    .restart local v0       #campaignJson:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #json:Lorg/json/JSONObject;
    :cond_0
    new-instance v5, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;-><init>(Lorg/json/JSONObject;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v0           #campaignJson:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 42
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error parsing campaigns: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "jsonObject"

    .prologue
    .line 57
    :try_start_0
    const-string v1, "click_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->clickLink:Ljava/lang/String;

    .line 58
    const-string v1, "advert_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignType:Ljava/lang/String;

    .line 59
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->guid:Ljava/lang/String;

    .line 60
    const-string v1, "ad_image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adImage:Ljava/lang/String;

    .line 61
    const-string v1, "identifier"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->identifier:Ljava/lang/String;

    .line 63
    const-string v1, "campaign_max_show_times"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "campaign_max_show_times"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 64
    const-string v1, "campaign_max_show_times"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignMaxShowTimes:I

    .line 66
    :cond_0
    const-string v1, "campaign_display_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "campaign_display_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 67
    const-string v1, "campaign_display_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignDisplayTime:I

    .line 69
    :cond_1
    const-string v1, "ad_max_show_times"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ad_max_show_times"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_2

    .line 70
    const-string v1, "ad_max_show_times"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adMaxShowTimes:I

    .line 72
    :cond_2
    const-string v1, "ad_display_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ad_display_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_3

    .line 73
    const-string v1, "ad_display_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adDisplayTime:I

    .line 75
    :cond_3
    const-string v1, "image_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "image_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_4

    .line 76
    const-string v1, "image_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->imageData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_4
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignType:Ljava/lang/String;

    return-object v0
.end method

.method public getClickLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->clickLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDislayTime()I
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignDisplayTime:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 117
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adDisplayTime:I

    .line 118
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignDisplayTime:I

    goto :goto_0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->imageData:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxShowTimes()I
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignMaxShowTimes:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 124
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->adMaxShowTimes:I

    .line 125
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->campaignMaxShowTimes:I

    goto :goto_0
.end method
