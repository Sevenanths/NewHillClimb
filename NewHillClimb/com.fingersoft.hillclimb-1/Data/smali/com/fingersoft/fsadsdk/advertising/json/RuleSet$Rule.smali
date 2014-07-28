.class public Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;
.super Ljava/lang/Object;
.source "RuleSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rule"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->this$0:Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->providers:Ljava/util/List;

    .line 66
    invoke-direct {p0, p2}, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->parseJson(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    .line 73
    :try_start_0
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->name:Ljava/lang/String;

    .line 74
    const-string v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->version:I

    .line 75
    const-string v3, "ad_providers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 76
    .local v2, providerArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 85
    .end local v1           #i:I
    .end local v2           #providerArray:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 78
    .restart local v1       #i:I
    .restart local v2       #providerArray:Lorg/json/JSONArray;
    :cond_0
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->providers:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "identifier"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1           #i:I
    .end local v2           #providerArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "fsad-sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriorityList()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    const-string v0, ""

    .line 90
    .local v0, priorityList:Ljava/lang/String;
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    return-object v0

    .line 90
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, provider:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;->version:I

    return v0
.end method
