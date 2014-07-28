.class public Lcom/fingersoft/billing/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 119
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "ResponseHandler"

    const-string v1, "UI is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/fingersoft/billing/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 103
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/fingersoft/billing/PurchaseObserver;->onBillingSupported(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method private static getCoinsForId(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    const v4, 0x124f80

    const v2, 0x927c0

    const v0, 0x493e0

    const v3, 0xf42400

    const v1, 0x7a1200

    .line 36
    const-string v5, "com.fingersoft.hillclimb.adfree_150000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v0, 0x249f0

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    const-string v5, "com.fingersoft.hillclimb.adfree_300000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 38
    const-string v5, "com.fingersoft.hillclimb.adfree_750000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v0, 0xb71b0

    goto :goto_0

    .line 39
    :cond_2
    const-string v5, "com.fingersoft.hillclimb.adfree_2000000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v0, 0x1e8480

    goto :goto_0

    .line 40
    :cond_3
    const-string v5, "com.fingersoft.hillclimb.adfree_4000000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v0, 0x3d0900

    goto :goto_0

    .line 41
    :cond_4
    const-string v5, "com.fingersoft.hillclimb.adfree_8000000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    goto :goto_0

    .line 42
    :cond_5
    const-string v5, "com.fingersoft.hillclimb.adfree_20000000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v0, 0x1312d00

    goto :goto_0

    .line 45
    :cond_6
    const-string v5, "com.fingersoft.hillclimb.iap2.adfree_300000coins"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    const-string v0, "com.fingersoft.hillclimb.iap2.adfree_600000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    .line 47
    :cond_7
    const-string v0, "com.fingersoft.hillclimb.iap2.adfree_1500000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x16e360

    goto :goto_0

    .line 48
    :cond_8
    const-string v0, "com.fingersoft.hillclimb.iap2.adfree_4000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3d0900

    goto :goto_0

    .line 49
    :cond_9
    const-string v0, "com.fingersoft.hillclimb.iap2.adfree_8000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_0

    .line 50
    :cond_a
    const-string v0, "com.fingersoft.hillclimb.iap2.adfree_16000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_0

    .line 51
    :cond_b
    const-string v0, "com.fingersoft.hillclimb.iap2.adfree_40000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x2625a00

    goto/16 :goto_0

    .line 54
    :cond_c
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_600000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    .line 55
    :cond_d
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_1200000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v4

    goto/16 :goto_0

    .line 56
    :cond_e
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_3000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x2dc6c0

    goto/16 :goto_0

    .line 57
    :cond_f
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_8000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 58
    :cond_10
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_16000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto/16 :goto_0

    .line 59
    :cond_11
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_32000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x1e84800

    goto/16 :goto_0

    .line 60
    :cond_12
    const-string v0, "com.fingersoft.hillclimb.iap3.adfree_80000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x4c4b400

    goto/16 :goto_0

    .line 63
    :cond_13
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_1200000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v4

    goto/16 :goto_0

    .line 64
    :cond_14
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_2400000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x249f00

    goto/16 :goto_0

    .line 65
    :cond_15
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_6000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x5b8d80

    goto/16 :goto_0

    .line 66
    :cond_16
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_16000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    goto/16 :goto_0

    .line 67
    :cond_17
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_32000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x1e84800

    goto/16 :goto_0

    .line 68
    :cond_18
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_64000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x3d09000

    goto/16 :goto_0

    .line 69
    :cond_19
    const-string v0, "com.fingersoft.hillclimb.iap4.adfree_160000000coins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x9896800

    goto/16 :goto_0

    .line 70
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/fingersoft/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "purchaseState"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    const/4 v5, 0x0

    .line 151
    sget-object v3, Lcom/fingersoft/billing/Consts$PurchaseState;->PURCHASED:Lcom/fingersoft/billing/Consts$PurchaseState;

    if-ne p1, v3, :cond_3

    .line 153
    invoke-static {p0, p3}, Lcom/fingersoft/game/InAppPurchaseStore;->isOrderProcessed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.test.purchased"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 157
    .local v2, validProduct:Z
    const-string v3, "android.test.purchased"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const/16 v3, 0x3e8

    invoke-static {p0, v3}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 160
    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->setAdFree(Landroid/content/Context;)V

    .line 163
    :cond_1
    invoke-static {p2}, Lcom/fingersoft/billing/ResponseHandler;->getCoinsForId(Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, coins:I
    if-lez v0, :cond_4

    .line 167
    invoke-static {p0, v0}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 168
    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->setAdFree(Landroid/content/Context;)V

    .line 169
    const/4 v2, 0x1

    .line 192
    :cond_2
    :goto_0
    invoke-static {p0, p3}, Lcom/fingersoft/game/InAppPurchaseStore;->markAsProcessed(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    if-eqz v2, :cond_3

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/iap/purchased/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    .line 200
    .end local v0           #coins:I
    .end local v2           #validProduct:Z
    :cond_3
    return-void

    .line 174
    .restart local v0       #coins:I
    .restart local v2       #validProduct:Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, iapSettingNameBase:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".coins"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".coins"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v3}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 179
    const/4 v2, 0x1

    .line 182
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".adfree"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".adfree"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 186
    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->setAdFree(Landroid/content/Context;)V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static declared-synchronized register(Lcom/fingersoft/billing/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 85
    const-class v0, Lcom/fingersoft/billing/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/fingersoft/billing/BillingService$RequestPurchase;Lcom/fingersoft/billing/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 217
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/fingersoft/billing/PurchaseObserver;->onRequestPurchaseResponse(Lcom/fingersoft/billing/BillingService$RequestPurchase;Lcom/fingersoft/billing/Consts$ResponseCode;)V

    .line 220
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/fingersoft/billing/BillingService$RestoreTransactions;Lcom/fingersoft/billing/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 233
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/fingersoft/billing/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/fingersoft/billing/BillingService$RestoreTransactions;Lcom/fingersoft/billing/Consts$ResponseCode;)V

    .line 236
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/fingersoft/billing/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 93
    const-class v0, Lcom/fingersoft/billing/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/fingersoft/billing/ResponseHandler;->sPurchaseObserver:Lcom/fingersoft/billing/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v0

    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
