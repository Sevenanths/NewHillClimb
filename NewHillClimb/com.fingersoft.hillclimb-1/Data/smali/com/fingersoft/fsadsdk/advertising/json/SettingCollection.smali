.class public Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;
.super Ljava/lang/Object;
.source "SettingCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;
    }
.end annotation


# instance fields
.field settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1
    .parameter "settingsJson"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->settings:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->parseJson(Lorg/json/JSONArray;)V

    .line 22
    return-void
.end method

.method private parseJson(Lorg/json/JSONArray;)V
    .locals 5
    .parameter "settingsJson"

    .prologue
    .line 28
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 38
    :goto_1
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    .local v2, o:Lorg/json/JSONObject;
    new-instance v3, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;

    invoke-direct {v3, p0, v2}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;-><init>(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v3}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->addSetting(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v2           #o:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "fsad-sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addSetting(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public getSettingByName(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;
    .locals 3
    .parameter "name"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;-><init>(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;

    .line 54
    .local v0, s:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;
    #getter for: Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->access$0(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->settings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public settingExistsWithName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 61
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;

    .line 63
    .local v0, s:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;
    #getter for: Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->access$0(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
