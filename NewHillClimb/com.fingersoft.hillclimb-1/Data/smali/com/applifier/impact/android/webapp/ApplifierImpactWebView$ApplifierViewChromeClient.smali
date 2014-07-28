.class Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ApplifierImpactWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierViewChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;


# direct methods
.method private constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"

    .prologue
    .line 288
    move-object v1, p3

    .line 289
    .local v1, sourceFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 292
    .local v2, tmp:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #tmp:Ljava/io/File;
    .local v3, tmp:Ljava/io/File;
    move-object v2, v3

    .line 298
    .end local v3           #tmp:Ljava/io/File;
    .restart local v2       #tmp:Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 301
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JavaScript (sourceId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", line="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not handle sourceId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 305
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 306
    return-void
.end method
