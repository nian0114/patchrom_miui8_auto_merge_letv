.class Lcom/letv/leui/preference/LeListPreference$2;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$100(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 638
    return-void
.end method
