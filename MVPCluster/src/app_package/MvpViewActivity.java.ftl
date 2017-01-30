package ${packageName};

import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;

public class ${className}Activity extends AppCompatActivity {

  ${className}Contract.Presenter presenter;

  private ${className}ActivityBinding binding;
  
  @Override
  protected void onCreate(final Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    binding = DataBindingUtil.setContentView(this, R.layout.${classToResource(className)}_activity);

    FragmentManager fm = getSupportFragmentManager();
    
    ${className}Fragment fragment = (${className}Fragment) fm.findFragmentById(R.id.contentFrame);
    if (fragment == null) {
      fragment = ${className}Fragment.newInstance();
      FragmentTransaction transaction = fm.beginTransaction();
      transaction.add(R.id.contentFrame, fragment);
      transaction.commit();
    }
    
    presenter = new ${className}Presenter(fragment);

    if (savedInstanceState != null) {
      /* Load previously saved state, if available. */
    }
  }

  @Override
  public void onSaveInstanceState(Bundle outState) {
    super.onSaveInstanceState(outState);
  }
      
}
