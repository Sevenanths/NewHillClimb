.class public Lcom/fingersoft/billing/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/billing/BillingService$RestoreTransactions;,
        Lcom/fingersoft/billing/BillingService$GetPurchaseInformation;,
        Lcom/fingersoft/billing/BillingService$ConfirmNotifications;,
        Lcom/fingersoft/billing/BillingService$RequestPurchase;,
        Lcom/fingersoft/billing/BillingService$CheckBillingSupported;,
        Lcom/fingersoft/billing/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fingersoft/billing/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/fingersoft/billing/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/fingersoft/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fingersoft/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/fingersoft/billing/BillingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fingersoft/billing/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/fingersoft/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/fingersoft/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/fingersoft/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/fingersoft/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 424
    :try_start_0
    const-string v3, "BillingService"

    const-string v4, "binding to Market billing service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/fingersoft/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 431
    .local v0, bindResult:Z
    if-eqz v0, :cond_0

    .line 439
    .end local v0           #bindResult:Z
    :goto_0
    return v2

    .line 434
    .restart local v0       #bindResult:Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0           #bindResult:Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/fingersoft/billing/Consts$ResponseCode;)V
    .locals 4
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 548
    sget-object v1, Lcom/fingersoft/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/billing/BillingService$BillingRequest;

    .line 549
    .local v0, request:Lcom/fingersoft/billing/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 551
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0, p3}, Lcom/fingersoft/billing/BillingService$BillingRequest;->responseCodeReceived(Lcom/fingersoft/billing/Consts$ResponseCode;)V

    .line 555
    :cond_0
    sget-object v1, Lcom/fingersoft/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 486
    new-instance v0, Lcom/fingersoft/billing/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/fingersoft/billing/BillingService$ConfirmNotifications;-><init>(Lcom/fingersoft/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fingersoft/billing/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 503
    new-instance v0, Lcom/fingersoft/billing/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/fingersoft/billing/BillingService$GetPurchaseInformation;-><init>(Lcom/fingersoft/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fingersoft/billing/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "startId"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 516
    invoke-static {p2, p3}, Lcom/fingersoft/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 517
    .local v10, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fingersoft/billing/Security$VerifiedPurchase;>;"
    if-nez v10, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v9, notifyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;

    .line 523
    .local v11, vp:Lcom/fingersoft/billing/Security$VerifiedPurchase;
    iget-object v0, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    iget-object v1, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->purchaseState:Lcom/fingersoft/billing/Consts$PurchaseState;

    iget-object v2, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v11, Lcom/fingersoft/billing/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/fingersoft/billing/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/fingersoft/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 529
    .end local v11           #vp:Lcom/fingersoft/billing/Security$VerifiedPurchase;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 531
    .local v8, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/fingersoft/billing/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 5

    .prologue
    .line 563
    const/4 v0, -0x1

    .line 565
    .local v0, maxStartId:I
    :cond_0
    :goto_0
    sget-object v2, Lcom/fingersoft/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fingersoft/billing/BillingService$BillingRequest;

    .local v1, request:Lcom/fingersoft/billing/BillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 566
    invoke-virtual {v1}, Lcom/fingersoft/billing/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    sget-object v2, Lcom/fingersoft/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 572
    invoke-virtual {v1}, Lcom/fingersoft/billing/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 573
    invoke-virtual {v1}, Lcom/fingersoft/billing/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 578
    :cond_1
    invoke-direct {p0}, Lcom/fingersoft/billing/BillingService;->bindToMarketBillingService()Z

    .line 592
    :cond_2
    :goto_1
    return-void

    .line 586
    :cond_3
    if-ltz v0, :cond_2

    .line 588
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopping service, startId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0, v0}, Lcom/fingersoft/billing/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/fingersoft/billing/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/fingersoft/billing/BillingService$CheckBillingSupported;-><init>(Lcom/fingersoft/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/fingersoft/billing/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, action:Ljava/lang/String;
    const-string v9, "BillingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCommand() action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v9, "com.fingersoft.hillclimb.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 398
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/fingersoft/billing/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 414
    .end local v2           #notifyIds:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string v9, "com.fingersoft.hillclimb.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 401
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, notifyId:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/fingersoft/billing/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 403
    .end local v1           #notifyId:Ljava/lang/String;
    :cond_2
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 404
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 405
    .local v8, signedData:Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, signature:Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/fingersoft/billing/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v7           #signature:Ljava/lang/String;
    .end local v8           #signedData:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 408
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 409
    .local v3, requestId:J
    const-string v9, "response_code"

    sget-object v10, Lcom/fingersoft/billing/Consts$ResponseCode;->RESULT_ERROR:Lcom/fingersoft/billing/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/fingersoft/billing/Consts$ResponseCode;->ordinal()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 411
    .local v6, responseCodeIndex:I
    invoke-static {v6}, Lcom/fingersoft/billing/Consts$ResponseCode;->valueOf(I)Lcom/fingersoft/billing/Consts$ResponseCode;

    move-result-object v5

    .line 412
    .local v5, responseCode:Lcom/fingersoft/billing/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/fingersoft/billing/BillingService;->checkResponseCode(JLcom/fingersoft/billing/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 600
    const-string v0, "BillingService"

    const-string v1, "Billing service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/fingersoft/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 603
    invoke-direct {p0}, Lcom/fingersoft/billing/BillingService;->runPendingRequests()V

    .line 604
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 610
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    sput-object v0, Lcom/fingersoft/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 612
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/fingersoft/billing/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 373
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0, p1, p3}, Lcom/fingersoft/billing/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 383
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "productId"
    .parameter "developerPayload"

    .prologue
    .line 461
    new-instance v0, Lcom/fingersoft/billing/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/fingersoft/billing/BillingService$RequestPurchase;-><init>(Lcom/fingersoft/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fingersoft/billing/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/fingersoft/billing/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/fingersoft/billing/BillingService$RestoreTransactions;-><init>(Lcom/fingersoft/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/fingersoft/billing/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/fingersoft/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/fingersoft/billing/BillingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BillingService"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 620
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/fingersoft/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0
.end method
