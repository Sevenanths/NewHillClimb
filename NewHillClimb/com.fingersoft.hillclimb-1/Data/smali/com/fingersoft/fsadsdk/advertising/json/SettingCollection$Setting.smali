.class public Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;
.super Ljava/lang/Object;
.source "SettingCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Setting"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "value"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->this$0:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->name:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->value:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter "json"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->this$0:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p2}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->parseJson(Lorg/json/JSONObject;)V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->name:Ljava/lang/String;

    return-object v0
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"

    .prologue
    .line 88
    :try_start_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->name:Ljava/lang/String;

    .line 89
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->value:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "fsad-sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->value:Ljava/lang/String;

    return-object v0
.end method
