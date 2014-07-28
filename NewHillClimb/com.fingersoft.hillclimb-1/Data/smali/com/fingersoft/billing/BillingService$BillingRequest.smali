.class abstract Lcom/fingersoft/billing/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/billing/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/fingersoft/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/fingersoft/billing/BillingService;I)V
    .locals 0
    .parameter
    .parameter "startId"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->this$0:Lcom/fingersoft/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p2, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->mStartId:I

    .line 86
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "method"
    .parameter "response"

    .prologue
    .line 170
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/fingersoft/billing/Consts$ResponseCode;->valueOf(I)Lcom/fingersoft/billing/Consts$ResponseCode;

    move-result-object v0

    .line 173
    .local v0, responseCode:Lcom/fingersoft/billing/Consts$ResponseCode;
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fingersoft/billing/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, request:Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->this$0:Lcom/fingersoft/billing/BillingService;

    invoke-virtual {v2}, Lcom/fingersoft/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 143
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fingersoft/billing/BillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 145
    return-void
.end method

.method protected responseCodeReceived(Lcom/fingersoft/billing/Consts$ResponseCode;)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 159
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 117
    const-string v1, "BillingService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcom/fingersoft/billing/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/fingersoft/billing/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->mRequestId:J

    .line 123
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->mRequestId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-wide v1, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/fingersoft/billing/BillingService;->access$300()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/fingersoft/billing/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/fingersoft/billing/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/fingersoft/billing/BillingService$BillingRequest;->this$0:Lcom/fingersoft/billing/BillingService;

    #calls: Lcom/fingersoft/billing/BillingService;->bindToMarketBillingService()Z
    invoke-static {v1}, Lcom/fingersoft/billing/BillingService;->access$000(Lcom/fingersoft/billing/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lcom/fingersoft/billing/BillingService;->access$100()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
