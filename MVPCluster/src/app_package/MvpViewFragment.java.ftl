package ${packageName};

import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${className}Fragment extends BaseFragment<${className}Contract.Presenter> implements ${className}Contract.View {

  private ${className}Contract.Presenter presenter;

  public static ${className}Fragment newInstance() {
    return new ${className}Fragment();
  }

  @Override
  public void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
  }

  @Override
  public void onResume() {
    super.onResume();
    presenter.subscribe();
  }

  @Override
  public void onPause() {
    super.onPause();
    presenter.unsubscribe();
  }

  @Override
  public void setPresenter(@NonNull ${className}Contract.Presenter presenter) {
    this.presenter = presenter;
  }

  @Nullable
  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container,
                           Bundle savedInstanceState) {
    ContentMainBinding binding = DataBindingUtil.inflate(inflater, R.layout.content_main, container, false);

    // Use the binding to set view state.
    
    return binding.getRoot();
  }
}
