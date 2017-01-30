package ${packageName};

import android.support.annotation.NonNull;
import android.util.Log;

import rx.Observer;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

public class ${className}Presenter implements ${className}Contract.Presenter {

  @NonNull
  private final ${className}Contract.View view;

  private Subscription subscription;

  public ${className}Presenter(@NonNull ${className}Contract.View view) {
    this.view = view;
    view.setPresenter(this);
  }

  @Override
    public void subscribe() {
    subcription = DaggerApplicationComponent.yadda
      .subscribeOn(Schedulers.computation())
      .observeOn(AndroidSchedulers.mainThread())
      .subscribe(new Observer<RESULT>() {
          @Override
          public void onCompleted() {
            Log.d(TAG, "Completed observing result.");
          }
          
          @Override
          public void onError(Throwable e) {
            e.printStackTrace();
            Log.e(TAG, "Error observing result.");
          }
          
          @Override
          public void onNext(RESULT result) {
            // Update view.
          }
        });
  }

  @Override
    public void unsubscribe() {
  }

}
