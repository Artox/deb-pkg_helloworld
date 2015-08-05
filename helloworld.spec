Name: helloworld
Version: 1.0
Release: 1
License: MIT
Group: Development/Tools
Source: %{name}-%{version}.tar.gz
Summary: Hello-World, test application

%description
Amagad, I have no idea what to write. This is totally self-esplanatory

%prep
%setup -q

%build
make

%install
make DESTDIR=%{buildroot} install

%files
%defattr(-,root,root)
%{_bindir}/helloworld

%changelog
