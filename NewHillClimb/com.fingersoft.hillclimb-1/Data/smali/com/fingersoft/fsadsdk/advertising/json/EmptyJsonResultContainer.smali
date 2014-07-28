.class public Lcom/fingersoft/fsadsdk/advertising/json/EmptyJsonResultContainer;
.super Ljava/lang/Object;
.source "EmptyJsonResultContainer.java"

# interfaces
.implements Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public getPromotions()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public getSettings()Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method
