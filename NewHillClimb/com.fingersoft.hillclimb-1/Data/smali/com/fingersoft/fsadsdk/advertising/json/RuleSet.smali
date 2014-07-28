.class public Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;
.super Ljava/lang/Object;
.source "RuleSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;
    }
.end annotation


# instance fields
.field rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1
    .parameter "jsonRuleSetArray"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;->rules:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;->parseJson(Lorg/json/JSONArray;)V

    .line 22
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;->processRules()V

    .line 23
    return-void
.end method

.method private parseJson(Lorg/json/JSONArray;)V
    .locals 7
    .parameter "jsonArray"

    .prologue
    .line 29
    :try_start_0
    const-string v5, "rulesets"

    invoke-static {p1, v5}, Lcom/fingersoft/fsadsdk/advertising/utils/JSONUtils;->getSubArray(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 30
    .local v3, ruleSetArray:Lorg/json/JSONArray;
    const-string v5, "rules"

    invoke-static {v3, v5}, Lcom/fingersoft/fsadsdk/advertising/utils/JSONUtils;->getSubArray(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 31
    .local v4, rulesArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 42
    .end local v1           #i:I
    .end local v3           #ruleSetArray:Lorg/json/JSONArray;
    .end local v4           #rulesArray:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 33
    .restart local v1       #i:I
    .restart local v3       #ruleSetArray:Lorg/json/JSONArray;
    .restart local v4       #rulesArray:Lorg/json/JSONArray;
    :cond_0
    new-instance v2, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;-><init>(Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;Lorg/json/JSONObject;)V

    .line 34
    .local v2, r:Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;
    const-string v5, "fsad-sdk"

    const-string v6, "Adding rule"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1           #i:I
    .end local v2           #r:Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;
    .end local v3           #ruleSetArray:Lorg/json/JSONArray;
    .end local v4           #rulesArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "fsad-sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processRules()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method


# virtual methods
.method public addRule(Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/json/RuleSet$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/RuleSet;->rules:Ljava/util/ArrayList;

    return-object v0
.end method
