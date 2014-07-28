.class public Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# instance fields
.field priorityList:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;->priorityList:Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;->parseJson(Lorg/json/JSONObject;)V

    .line 18
    return-void
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "j"

    .prologue
    .line 24
    :try_start_0
    const-string v1, "providers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;->priorityList:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "fsad-sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getPriorityList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;->priorityList:Ljava/lang/String;

    return-object v0
.end method
