.class public Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;
.super Ljava/lang/Object;
.source "CrossPromotionCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    }
.end annotation


# instance fields
.field promotions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1
    .parameter "promotionJson"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->promotions:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->parseJson(Lorg/json/JSONArray;)V

    .line 25
    return-void
.end method

.method private parseJson(Lorg/json/JSONArray;)V
    .locals 5
    .parameter "promotionJson"

    .prologue
    .line 31
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 40
    :goto_1
    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->promotions:Ljava/util/ArrayList;

    new-instance v3, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;-><init>(Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addPromotion(Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public getCrossPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->promotions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasPromotions()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
