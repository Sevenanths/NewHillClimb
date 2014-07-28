.class Lcom/fingersoft/billing/PurchaseObserver$1;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/billing/PurchaseObserver;->postPurchaseStateChange(Lcom/fingersoft/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/billing/PurchaseObserver;

.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lcom/fingersoft/billing/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J

.field final synthetic val$quantity:I


# direct methods
.method constructor <init>(Lcom/fingersoft/billing/PurchaseObserver;Lcom/fingersoft/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->this$0:Lcom/fingersoft/billing/PurchaseObserver;

    iput-object p2, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$purchaseState:Lcom/fingersoft/billing/Consts$PurchaseState;

    iput-object p3, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iput p4, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$quantity:I

    iput-wide p5, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$purchaseTime:J

    iput-object p7, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->this$0:Lcom/fingersoft/billing/PurchaseObserver;

    iget-object v1, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$purchaseState:Lcom/fingersoft/billing/Consts$PurchaseState;

    iget-object v2, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iget v3, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$quantity:I

    iget-wide v4, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/fingersoft/billing/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/fingersoft/billing/PurchaseObserver;->onPurchaseStateChange(Lcom/fingersoft/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 158
    return-void
.end method
