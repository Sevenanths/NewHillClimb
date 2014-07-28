.class public Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsonResultContainer"
.end annotation


# instance fields
.field private applicationInfo:Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

.field private crossPromotionCollection:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

.field private settingCollection:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->this$0:Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->settingCollection:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    .line 34
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->crossPromotionCollection:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    .line 35
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->applicationInfo:Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->applicationInfo:Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

    return-object v0
.end method

.method public getPromotions()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->crossPromotionCollection:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    return-object v0
.end method

.method public getSettings()Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->settingCollection:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    return-object v0
.end method

.method protected setApplicationInfo(Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;)V
    .locals 0
    .parameter "applicationInfo"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->applicationInfo:Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

    .line 40
    return-void
.end method

.method protected setPromotionCollection(Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;)V
    .locals 0
    .parameter "promotionCollection"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->crossPromotionCollection:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    .line 50
    return-void
.end method

.method protected setSettingCollection(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;)V
    .locals 0
    .parameter "settingsCollection"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler$JsonResultContainer;->settingCollection:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    .line 45
    return-void
.end method
