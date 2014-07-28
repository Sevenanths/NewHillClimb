.class public Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;
    }
.end annotation


# instance fields
.field private resultContainer:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;-><init>(Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->resultContainer:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;

    .line 13
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->parseJson(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method private parseJson(Ljava/lang/String;)V
    .locals 5
    .parameter "json"

    .prologue
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->resultContainer:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;

    new-instance v2, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "application"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->setApplicationInfo(Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;)V

    .line 22
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->resultContainer:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;

    new-instance v2, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "settings"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->setSettingCollection(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;)V

    .line 23
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->resultContainer:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;

    new-instance v2, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "promotions"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->setPromotionCollection(Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parding JSON "

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
.method public getResultContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->resultContainer:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;

    return-object v0
.end method
