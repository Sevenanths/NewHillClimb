.class Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;
.super Landroid/os/AsyncTask;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProviderLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/AdManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field mProviderPriorities:Ljava/lang/String;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method private constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 279
    sget-object v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mProviderPriorities:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;
    .locals 3
    .parameter "adManager"

    .prologue
    const/4 v2, 0x0

    .line 286
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 287
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdProviderPriorities()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mProviderPriorities:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-object v2

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mProviderPriorities:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 299
    const-string v0, ""

    .line 300
    .local v0, actualOrder:Ljava/lang/String;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mProviderPriorities:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "providerpriority"

    sget-object v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mProviderPriorities:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "providerpriority/didnt_receive"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mReceivedPriorities:Z

    .line 323
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "providerpriority"

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->mProviderPriorities:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-boolean v1, v1, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdViewStarted:Z

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "providerpriority/received_after_viewad"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "providerpriority/received_before_viewad"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    goto :goto_0
.end method
