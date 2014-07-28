.class Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/ApplifierImpact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactPlayVideoRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/ApplifierImpact;


# direct methods
.method private constructor <init>(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applifier/impact/android/ApplifierImpact;Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;-><init>(Lcom/applifier/impact/android/ApplifierImpact;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 949
    const-string v3, "Running videoplayrunner"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 950
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v3, :cond_1

    .line 951
    const-string v3, "Selected campaign found"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 955
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v3, v3, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v4, "showSpinner"

    invoke-virtual {v3, v4, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 964
    iget-object v3, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    #calls: Lcom/applifier/impact/android/ApplifierImpact;->createPauseScreenTimer()V
    invoke-static {v3}, Lcom/applifier/impact/android/ApplifierImpact;->access$3(Lcom/applifier/impact/android/ApplifierImpact;)V

    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, playUrl:Ljava/lang/String;
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoStreamUrl()Ljava/lang/String;

    move-result-object v2

    .line 970
    :cond_0
    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    sget-object v4, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v3, v4}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->setViewState(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start videoplayback with: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 972
    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v3, v3, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v3, v2}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->playVideo(Ljava/lang/String;)V

    .line 976
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v2           #playUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 957
    .restart local v0       #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 958
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Couldn\'t create data JSON"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 975
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "Campaign is null"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
