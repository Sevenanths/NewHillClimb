.class Lcom/google/android/gms/analytics/GoogleAnalytics$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/GoogleAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic vg:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->vg:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->vg:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->vg:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->b(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V

    return-void
.end method
