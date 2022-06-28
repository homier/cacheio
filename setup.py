import setuptools


setuptools.setup(
    name='cacheio',
    use_scm_version=True,
    description='An asynchronous cache library based on asyncio',
    author='Dzmitry Mikhalapau',
    author_email='dzmitry.mikhalapau@gmail.com',
    packages=setuptools.find_namespace_packages(
        include=[
            'cacheio.*',
        ],
    ),
    include_package_data=True,
    python_requires='>=3.8, <4',
    setup_requires=[
        'setuptools_scm==7.0.2',
    ],
)
