.class Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;
.super Ljava/lang/Object;
.source "ApplifierImpactWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactCancelUrlLoaderRunner"
.end annotation


# instance fields
.field private _loader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

.field final synthetic this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;


# direct methods
.method public constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 1
    .parameter
    .parameter "loader"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->_loader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 599
    iput-object p2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->_loader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 600
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->_loader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling urlLoader got exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
